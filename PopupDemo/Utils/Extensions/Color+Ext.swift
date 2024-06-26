//
//  Color+Ext.swift
//  PopupDemo
//
//  Created by Thach Nguyen Trong on 5/2/24.
//

import SwiftUI

extension Color {
    static let primary: Color = .init(hex: 0x388091)
    static let secondary: Color = .init(hex: 0xE66460)
    static let onBackgroundPrimary: Color = .init(hex: 0x252525)
    static let onBackgroundSecondary: Color = .init(hex: 0x6F7278)
    static let onBackgroundTertiary: Color = .init(hex: 0xEEF1F7)
}

private extension Color {
    init(hex: UInt) {
        self.init(.sRGB,
                  red: Double((hex >> 16) & 0xff) / 255,
                  green: Double((hex >> 08) & 0xff) / 255,
                  blue: Double((hex >> 00) & 0xff) / 255,
                  opacity: 1
        )
    }
}

