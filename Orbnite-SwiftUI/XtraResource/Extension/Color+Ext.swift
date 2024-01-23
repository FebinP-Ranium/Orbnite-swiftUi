//
//  Color+Ext.swift
//  Appetizer-SwiftUI
//
//  Created by Febin Puthalath on 12/12/23.
//

import Foundation
import SwiftUI
extension Color{
    static let mainColor = Color("Main_Color")
    static let borderColor = Color("borderColor")

  
}
extension UIColor{
    static let mainColor = UIColor(named: "Main_Color")
    static let borderColor = Color("borderColor")

  
}
extension Color {
    static let background = LinearGradient(gradient: Gradient(colors: [.white,.white,.white, Color("Main_Color")]), startPoint: .topLeading, endPoint: .bottomTrailing)
}
