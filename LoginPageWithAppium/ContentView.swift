//
//  ContentView.swift
//  LoginPageWithAppium
//
//  Created by Ilya Bausov on 11/2/20.
//

import SwiftUI

struct ContentView: View {

    // Dummy credentials.
    let correctUsername = "User"
    let correctPassword = "qwerty"

    @State var username: String = ""
    @State var password: String = ""
    @State var authenticationSucceeded: Bool = false
    var body: some View {
        VStack {
            Text("Welcome Back")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 100)
            Text("Please enter the credentials in form below")
                .font(.caption)
                .padding()
            VStack(alignment: .leading) {
                Text("Username")
                    .font(.subheadline)
                TextField("Enter username", text: $username)
            }
                .padding()
            VStack(alignment: .leading) {
                Text("Password")
                    .font(.subheadline)
                SecureField("required", text: $password)
            }
                .padding()
            Button(action: { print("Login button pressed") }, label: {
                Text("Login")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(25)
                    .padding()
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
