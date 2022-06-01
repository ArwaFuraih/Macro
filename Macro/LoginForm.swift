////
////  signin.swift
////  Macro
////
////  Created by sumayah on 02/11/1443 AH.
////
//import SwiftUI
//
//struct LoginForm {
//    enum Field: Hashable {
//        case usernameField
//        case passwordField
//    }
//
//    @State private var username = ""
//    @State private var password = ""
//    @FocusState private var focusedField: Field?
//
//    var body: some View {
//        Form {
//            TextField("Username", text: $username)
//                .focused($focusedField, equals: .usernameField)
//
//            SecureField("Password", text: $password)
//                .focused($focusedField, equals: .passwordField)
//
//            Button("Sign In") {
//                if username.isEmpty {
//                    focusedField = .usernameField
//                } else if password.isEmpty {
//                    focusedField = .passwordField
//                } else {
//                    handleLogin(username, password)
//                }
//            }
//        }
//    }
//}
