//
//  CustomTextField.swift
//  YoMarks_SwiftUI
//
//  Created by Максим Боталов on 20.09.2022.
//

import SwiftUI

struct CustomTextField: ViewModifier {
    
    @State var font: Font = .body
    @State var keyboardType: UIKeyboardType = .default
    @State var textInputAutocapitalization: TextInputAutocapitalization = .never
    
    func body(content: Content) -> some View {
        return content
            .font(font)
            .keyboardType(keyboardType)
            .textInputAutocapitalization(textInputAutocapitalization)
    }
}
