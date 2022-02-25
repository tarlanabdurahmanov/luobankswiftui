//
//  Constants.swift
//  LouBank
//
//  Created by Tarlan on 23.02.22.
//

import Foundation
import SwiftUI

let accentColor = Color(#colorLiteral(red: 0.9490196108818054, green: 0.9960784316062927, blue: 0.5529412031173706, alpha: 1))

let textColor = Color(#colorLiteral(red: 0.12916666269302368, green: 0.12916666269302368, blue: 0.12916666269302368, alpha: 1))

let mintColor = Color(#colorLiteral(red: 0.6980392336845398, green: 0.8156862854957581, blue: 0.8078431487083435, alpha: 1))

let greyColor = Color(#colorLiteral(red: 0.47322916984558105, green: 0.4609375, blue: 0.49166667461395264, alpha: 1))

let purpleColor = Color(#colorLiteral(red: 0.6666666865348816, green: 0.6196078658103943, blue: 0.7176470756530762, alpha: 1))

let backgroundColor = Color(hex: "1E1F1F")

let buttonAccentGradientColor = LinearGradient(
    gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.986344575881958, green: 1, blue: 0.875, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.9960784316062927, blue: 0.529411792755127, alpha: 1)), location: 1)]),
    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))

let buttonBlackColor = Color(#colorLiteral(red: 0.21176470816135406, green: 0.20000000298023224, blue: 0.2235294133424759, alpha: 1))

let financeCardBackgroundColor = Color(#colorLiteral(red: 0.14509804546833038, green: 0.14901961386203766, blue: 0.14901961386203766, alpha: 1))

let visa1Color = LinearGradient(
    gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.9166666865348816, green: 0.9166666865348816, blue: 0.9166666865348816, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.6980392336845398, green: 0.8156862854957581, blue: 0.8078431487083435, alpha: 1)), location: 1)]),
    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))

let visa2Color = LinearGradient(
    gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.986344575881958, green: 1, blue: 0.875, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.9450980424880981, green: 0.9960784316062927, blue: 0.529411792755127, alpha: 1)), location: 1)]),
    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))

let visa3Color = LinearGradient(
    gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.9486948847770691, green: 0.938368022441864, blue: 0.9583333134651184, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.7215686440467834, green: 0.6627451181411743, blue: 0.7764706015586853, alpha: 1)), location: 1)]),
    startPoint: UnitPoint(x: 0.5, y: -3.0616171314629196e-17),
    endPoint: UnitPoint(x: 0.5, y: 0.9999999999999999))
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
