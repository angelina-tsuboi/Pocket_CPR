//
//  TraditionalTimer.swift
//  CPR_Buddy WatchKit Extension
//
//  Created by Angelina Tsuboi on 6/15/22.
//

import SwiftUI

struct TraditionalTimerView: View {
    @Binding var isPresented: Bool
    @State private var chosenProfile: String = "Adult"
    @State private var selection: Tab = .tabOne
       enum Tab {
           case tabOne
           case tabTwo
       }
     
    var body: some View {
        TabView(selection: $selection) {
            // PAGE 1
            VStack {
                VStack {
                    Button("Infant") {
                        chosenProfile = "Infant"
                        selection = Tab.tabTwo
                    }.padding(.horizontal).buttonStyle(BorderedButtonStyle(tint: .pink)).padding(.top, 5)
                    
                    Button("Child") {
                        chosenProfile = "Child"
                        selection = Tab.tabTwo
                    }.padding(.horizontal).buttonStyle(BorderedButtonStyle(tint: .pink)).padding(.top, 5)
                    
                    Button("Adult") {
                        chosenProfile = "Adult"
                        selection = Tab.tabTwo
                    }.padding(.horizontal).buttonStyle(BorderedButtonStyle(tint: .pink)).padding(.top, 5)
                }
                .opacity(0.8)
                .padding(10)

                Spacer()
            }.gesture(DragGesture()).padding(.top, 15).tag(Tab.tabOne)

            VStack {
                VStack {
                    Image(systemName: "heart")
                        .font(.system(size: 30))
                    Text("CPR can double or triple the victim's survival rate. With enough guidance, anyone can learn CPR.")
                        .font(.footnote)
                        .multilineTextAlignment(.center)
                        .padding(.top, 10)
                }
                .opacity(0.8)
                .padding(10)

                Spacer()
            }.gesture(DragGesture()).padding(.top, 15).tag(Tab.tabTwo)
            
            
            

        }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}
