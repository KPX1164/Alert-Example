//
//  ContentView.swift
//  Educate3(AlertExample)
//
//  Created by Copter on 13/7/2563 BE.
//  Copyright © 2563 Copter. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var sTextField = ""
    @State var showingAlert = false
    var body: some View {
        VStack {
            Image("AfectS")
                .resizable()
                .scaledToFit()
            TextField("Try Something", text: $sTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 45)
            Button(action: {
                self.showingAlert = true
              //  print(self.sTextField)
            }){
                
                Text("Submit")
            }.padding(.all)
                .alert(isPresented: $showingAlert) { () -> Alert in
                    Alert(title: Text("Result"), message: Text(self.sTextField), dismissButton: .default(Text("Close")))
            }

        }.padding(.all, 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
