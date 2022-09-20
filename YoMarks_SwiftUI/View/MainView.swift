//
//  ContentView.swift
//  YoMarks_SwiftUI
//
//  Created by Максим Боталов on 19.09.2022.
//

import SwiftUI

struct MainView: View {
    @State private var facebookAuth = ""
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Spacer()
            
            // Welcome UI
            Group {
                VStack(alignment: .leading, spacing: 0) {
                    Text("Let’s you in")
                        .modifier(CustomText(font: .custom("Poppins-Bold", size: 40), textColor: Color("Blue")))
                    
                    Text("Please choose the authorization method that is convenient for you.")
                        .modifier(CustomText(font: .custom("Poppins-Regular", size: 17), textColor: Color("Black")))
                }
            }
            
            // Auth UI
            Group {
                VStack(spacing: 10) {
                    Button {
                        //
                    } label: {
                        HStack(spacing: 10) {
                            Image("facebook")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                            Text("Facebook")
                                .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Black")))
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 42)
                    .border(Color("Gray10"), width: 1)
                    .cornerRadius(10)
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 10) {
                            Image("google")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                            Text("Google")
                                .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Black")))
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 42)
                    .border(Color("Gray10"), width: 1)
                    .cornerRadius(10)
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 10) {
                            Image("apple")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                            
                            Text("Apple")
                                .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Black")))
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 42)
                    .border(Color("Gray10"), width: 1)
                    .cornerRadius(10)
                }
            }
            
            // Devider UI
            Group {
                HStack(spacing: 10) {
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color("Gray10"))
                    
                    Text("or")
                        .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Black")))
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color("Gray10"))
                }
            }
            
            // Auth email
            Button {
                //
            } label: {
                Text("Continue with Email")
                    .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("White")))
                
            }
            .frame(maxWidth: .infinity, maxHeight: 42)
            .background(Color("Blue"))
            .cornerRadius(10)
            
            Spacer()
            
            // No account
            HStack(spacing: 10) {
                Text("No account?")
                    .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Black")))
                
                Button {
                    //
                } label: {
                    Text("Sign Up")
                        .modifier(CustomText(font: .custom("Poppins-SemiBold", size: 15), textColor: Color("Blue")))
                }
                .padding(.vertical)
            }
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
