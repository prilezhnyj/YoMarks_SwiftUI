//
//  SignUpView.swift
//  YoMarks_SwiftUI
//
//  Created by Максим Боталов on 20.09.2022.
//

import SwiftUI

struct SignUpView: View {
    
    @FocusState private var tfFocus: Bool
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: tfFocus == true ? 10 : 40) {
            Spacer(minLength: 5)
            
            // Welcome UI
            Group {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Create your account")
                        .modifier(CustomText(font: .custom("Poppins-Bold", size: 40), textColor: Color("Blue")))
                    
                    Text("The account is needed so that all your data is kept at hand.")
                        .modifier(CustomText(font: .custom("Poppins-Regular", size: 17), textColor: Color("Black")))
                }
            }
            
            // Auth UI
            Group {
                VStack(spacing: 10) {
                    
                    // Email
                    HStack {
                        Image(systemName: "envelope.fill").padding(.horizontal, 15)
                            .frame(width: 23, height: 23, alignment: .center)
                            .padding(.horizontal, 15)
                        TextField("Your email address", text: $email)
                            .modifier(CustomTextField(font: .custom("Poppins-SemiBold", size: 15), keyboardType: .emailAddress, textInputAutocapitalization: .never))
                            .focused($tfFocus)
                    }
                    .foregroundColor(Color("Gray"))
                    .frame(width: screenSize.width - 60, height: 42)
                    .background(Color("Gray10"))
                    .cornerRadius(10)
                    
                    // Password
                    HStack {
                        Image(systemName: "lock.fill").padding(.horizontal, 15)
                            .frame(width: 23, height: 23, alignment: .center)
                            .padding(.horizontal, 15)
                        SecureField("We need a password", text: $password)
                            .modifier(CustomTextField(font: .custom("Poppins-SemiBold", size: 15), keyboardType: .default, textInputAutocapitalization: .never))
                            .focused($tfFocus)
                    }
                    .foregroundColor(Color("Gray"))
                    .frame(width: screenSize.width - 60, height: 42)
                    .background(Color("Gray10"))
                    .cornerRadius(10)
                    
                    // Confirm password
                    HStack {
                        Image(systemName: "lock.fill").padding(.horizontal, 15)
                            .frame(width: 23, height: 23, alignment: .center)
                            .padding(.horizontal, 15)
                        SecureField("Repeat your password", text: $confirmPassword)
                            .modifier(CustomTextField(font: .custom("Poppins-SemiBold", size: 15), keyboardType: .default, textInputAutocapitalization: .never))
                            .focused($tfFocus)
                    }
                    .foregroundColor(Color("Gray"))
                    .frame(width: screenSize.width - 60, height: 42)
                    .background(Color("Gray10"))
                    .cornerRadius(10)
                }
            }
            
            // Finish
            Button {
                //
            } label: {
                Text("Finish registration")
                    .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("White")))
                
            }
            .frame(width: screenSize.width - 60, height: 42)
            .background(Color("Blue"))
            .cornerRadius(10)
            
            Spacer(minLength: 10)
            
            // No account
            HStack(spacing: 10) {
                Text("Have an account?")
                    .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Black")))
                
                Button {
                    //
                } label: {
                    Text("Sign In")
                        .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Blue")))
                }
                .padding(.vertical)
            }
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
