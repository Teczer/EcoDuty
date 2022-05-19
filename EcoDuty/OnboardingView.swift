//
//  SwiftUIView - OnboardingView.swift
//  EcoDuty
//
//  Created by Apprenant 63 on 11/05/2022.
//

import SwiftUI

struct OnboardingStep {
    let image : String
}

private let onBoardingSteps = [
    OnboardingStep(image: "OnboardingScreen1"),
    OnboardingStep(image: "OnboardingScreen2"),
    OnboardingStep(image: "OnboardingScreen3"),
    OnboardingStep(image: "OnboardingScreen4"),
    OnboardingStep(image: "OnboardingScreen5B")
]

struct SwiftUIView___OnboardingView: View {
    
    @State private var currentStep = 0 // Pour onboarding
    
    init () {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    self.currentStep = onBoardingSteps.count - 1
                }, label: {
                    Text("Passer")
                        .padding(16)
                        .foregroundColor(Color("cosmic-cobalt"))
                })
                
            } // Fin HStack
            
            TabView(selection : $currentStep) {
                ForEach(0..<onBoardingSteps.count) { it in
                    ZStack {
                        Image(onBoardingSteps[it].image)
                        //.resizable()
                            .ignoresSafeArea()
                    } // Fin ZStack
                    .tag(it)
                } // Fin ForEach
            } // Fin TabView
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack {
                ForEach(0..<onBoardingSteps.count) { it in
                    if it == currentStep {
                        Rectangle()
                            .frame(width : 20, height : 10)
                            .foregroundColor(Color("cosmic-cobalt"))
                            .cornerRadius(10)
                    } else {
                        Circle()
                            .frame(width : 10, height : 10)
                            .foregroundColor(Color("maximum-blue-purple"))
                    }
                }
                }
                .padding(.bottom, 24)
                
                Button(action: {
                    if self.currentStep < onBoardingSteps.count - 1 {
                        self.currentStep += 1
                    } else {
                        // GET STARTED LOGIC
                    }
                }) {
                    Text(currentStep < onBoardingSteps.count - 1 ? "Suivant" : "C'est parti !")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(16)
                        .frame(maxWidth : .infinity)
                        .background(Color("cosmic-cobalt"))
                        .cornerRadius(20)
                        .padding(.horizontal, 16)
                        .foregroundColor(Color("yellow-pantone"))
                }
                .buttonStyle(PlainButtonStyle())
                
            } // Fin VStack
            
        }
    }


struct SwiftUIView___OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView___OnboardingView()
    }
}
