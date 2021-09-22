//
//  ContentView.swift
//  Shared
//
//  Created by Sergej on 22/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    
    var body: some View {
            VStack {
                Text("Welcome to me app !<br> another line")
                    .fontWeight(.semibold)
                    .foregroundColor(.green)
                .padding()


                
            }
            Button(action: {
                print("test")
                self.alertIsVisible = true
            }) {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
            .alert(isPresented: self.$alertIsVisible) {
                Alert( title: Text("Title Popup"),
                message: Text("Sub-title: this is my 1 popup"),
                       dismissButton: .default(Text("Awsesome")))
            }
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
