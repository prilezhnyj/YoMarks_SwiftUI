//
//  TextView.swift
//  YoMarks_SwiftUI
//
//  Created by Максим Боталов on 19.09.2022.
//

import SwiftUI

struct CustomText: ViewModifier {
    
    @State var font: Font = .title
    @State var textColor: Color = .black
    @State var backgroundColor: Color = .clear
    
    func body(content: Content) -> some View {
        return content
            .font(font)
            .foregroundColor(textColor)
            .background(backgroundColor)
    }
}
