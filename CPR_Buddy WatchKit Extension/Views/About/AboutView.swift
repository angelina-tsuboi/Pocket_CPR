//
//  AboutView.swift
//  CPR_Buddy WatchKit Extension
//
//  Created by Angelina Tsuboi on 6/11/22.
//

import SwiftUI

struct AboutView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        TabView {
            // PAGE 1
            VStack {
                VStack {
                    Image(systemName: "heart")
                        .font(.system(size: 30))

                    Text("CPR is a life saving procedure performed on people whose heart stops beating.")
                        .font(SizeResponsive().getSubtextFont())
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                }
                .opacity(0.8)
                .padding(10)

                Spacer()
            }.padding(.top, 15)

            VStack {
                VStack {
                    Image(systemName: "heart")
                        .font(.system(size: 30))
                    Text("CPR can double or triple the victim's survival rate. With enough guidance, anyone can learn CPR.")
                        .font(SizeResponsive().getSubtextFont())
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                }
                .opacity(0.8)
                .padding(10)

                Spacer()
            }.padding(.top, 15)
            
            VStack {
                VStack {

                    Text("In an average person's body, under standard conditions, the heart's resting heart rate is between 60 - 100 beats per minute.")
                        .font(SizeResponsive().getSubtextFont())
                        .multilineTextAlignment(.center)
                }
                .opacity(0.8)
                .padding(10)

                Spacer()
            }.padding(.top, 25)
            
            VStack {
                VStack {

                    Text("When a person's heart stops beating, CPR can help regulate blood flow around the body. There are two forms of CPR: \n **1) Hands-Only CPR** \n **2) Traditional CPR**")
                        .font(SizeResponsive().getSubtextFont())
                        .multilineTextAlignment(.center)
                }
                .opacity(0.8)
                .padding(10)

                Spacer()
            }.padding(.top, 15)
            
            VStack {
                VStack {
                    Text("**Hands-Only CPR**")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    
                    Text("People who have little or no CPR training should use hands-only CPR. It requires you to compress the victim's chest hard for about 100-120 compressions a minute until help arrives.")
                    .font(SizeResponsive().getSubtextFont())
                    .multilineTextAlignment(.center)
                }
                .opacity(0.8)
                .padding(5)
            }
            
            VStack {
                VStack {
                    
                    Text("**Traditional CPR**")
                    .font(.footnote)
                    .multilineTextAlignment(.center)

                    Text("Traditional CPR is meant for people who have former CPR training. It requires you to perform two rescue breaths for every 30 chest compressions until help arrives.")
                        .font(SizeResponsive().getSubtextFont())
                        .multilineTextAlignment(.center)
                }
                .opacity(0.8)
                .padding(5)
            }
            
            VStack {
                VStack {
                    Text("**About Pocket CPR**")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    
                    Text("Pocket CPR teaches both Hands-Only and Traditional CPR methods through tutorials and CPR timers.")
                    .font(SizeResponsive().getSubtextFont())
                    .multilineTextAlignment(.center)
                }
                .opacity(0.8)

                Spacer()
                Button("Get Started") {
                    isPresented.toggle()
                }.padding(.horizontal).buttonStyle(BorderedButtonStyle(tint: .orange)).padding(.top, 5)
            }.padding(.top, 10)

        }.tabViewStyle(PageTabViewStyle())
    }
}

