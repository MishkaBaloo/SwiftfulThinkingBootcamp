//
//  OnboardingView.swift
//  SwiftUIstudy
//
//  Created by Michael on 01.05.2024.
//

import SwiftUI
struct OnboardingView: View {
    
    // Onboarding states:
    /*
      0 - Welcome screen
      1 - Add name
      2 - Add age
      3 - Add gender
     */
     
    //selected screen switcher and transition betwent them
    @State var onboardingState: Int = 0
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        ZStack{
            // content
            ZStack{
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    genderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            // buttons
            VStack{
                Spacer()
                bottomButtonSignIn
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

#Preview {
    OnboardingView()
        .background(Color.purple)
}

//MARK: COMPONENTS
extension OnboardingView {
    private var bottomButtonSignIn: some View {
        Text(onboardingState == 0 ? "SIGN UP" :
                onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundStyle(Color.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 10))
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View{
        VStack(spacing: 40, content: {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(Color.white)
            Text("Find your match!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(Color.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app for finding your mach online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundStyle(Color.white)
            Spacer()
            Spacer()
        })
        .multilineTextAlignment(.leading)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20, content: {
            Spacer()
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .clipShape(.rect(cornerRadius: 10))
            Spacer()
            Spacer()
        })
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20, content: {
            Spacer()
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(Color.white)
            Spacer()
            Spacer()
        })
        .padding(30)
    }

    private var genderSection: some View {
        VStack(spacing: 20, content: {
            Spacer()
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
            List{
                Picker(selection: $gender,
                    label:
                        Text(gender.count > 1 ? gender : "Select a gender")
                    .font(.headline)
                    .foregroundStyle(Color.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 10)),
                       content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-binary").tag("Non-binary")
                })
                .pickerStyle(MenuPickerStyle())
            }
            .listStyle(DefaultListStyle())
            .frame(width: 400, height: 150)
            .clipShape(.rect(cornerRadius: 10))
            
            Spacer()
            Spacer()
        })
        .padding(30)
    }
}


//MARK: FUNCTIONS
extension OnboardingView {
    
    
    func handleNextButtonPressed() {
        
        //CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long! 😩")
                
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward! 🤗")
                return
        }
            
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            signIn()
        } else {
            withAnimation(.spring) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge  = Int(age)
        currentUserGender = gender
        withAnimation(.spring) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
}
