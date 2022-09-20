//
//  ButtonView.swift
//  YoMarks_SwiftUI
//
//  Created by Максим Боталов on 20.09.2022.
//

import SwiftUI

struct ButtonView: ViewModifier {
    
    @State var cornerRadius: CGFloat = 0
    @State var backgroundColor: Color = .clear
    
    func body(content: Content) -> some View {
        return content
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
    }
}
