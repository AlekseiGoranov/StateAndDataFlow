//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by Alexey Efimov on 31.03.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @EnvironmentObject var letterCounter: letterCounter
    @ObservedObject  var name = UserSettings()
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name.userName)
                .multilineTextAlignment(.center)
                Text("\(name.userName.count)")
                    .foregroundColor((name.userName.count >= 3) ? .green : .red)
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
                .disabled(name.userName.count < 3)
            }
        }
    }
    
    private func registerUser() {
        if name.userName.count >= 3 {
            user.name = name.userName
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
