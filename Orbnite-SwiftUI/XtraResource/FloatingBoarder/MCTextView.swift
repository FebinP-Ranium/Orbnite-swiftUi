//
//  MCTextView.swift
//  Orbnite-SwiftUI
//
//  Created by Febin Puthalath on 23/01/24.
//

import Foundation
import SwiftUI
import MaterialComponents

struct FloatingLabelTextField:UIViewRepresentable{
    let title : String
    let placeHolder : String
    let isPassword: Bool
    typealias UIViewType = MDCOutlinedTextField

    init(_ title:String,placeholder:String,isPassword:Bool){
        self.title = title
        self.placeHolder = placeholder
        self.isPassword = isPassword
    }
    func makeUIView(context: Context) -> MDCOutlinedTextField {
            let textField = MDCOutlinedTextField()
            textField.label.text = self.title
            textField.label.font = UIFont(name: "nunito-bold", size: 14)
            textField.placeholder = placeHolder
           
        textField.sizeToFit()
        let eyeIcon = UIImageView(image: UIImage(systemName: "eye")?.withTintColor(.black))
        eyeIcon.tintColor = UIColor.black
        textField.trailingView = eyeIcon
        textField.trailingViewMode = .always
        return textField
        }
    
    func updateUIView(_ uiView: MDCOutlinedTextField, context: Context) {
        
    }
    
   
    
}

