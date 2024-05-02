//
//  View+Ext.swift
//  PopupDemo
//
//  Created by Thach Nguyen Trong on 5/2/24.
//

import SwiftUI

extension View {
    @ViewBuilder func active(if condition: Bool) -> some View {
        if condition { self }
    }
}
extension View {
    func frame(_ size: CGFloat) -> some View { frame(width: size, height: size, alignment: .center) }
}
extension View {
    func alignHorizontally(_ alignment: HorizontalAlignment, _ value: CGFloat = 0) -> some View {
        HStack(spacing: 0) {
            Spacer.width(alignment == .leading ? value : nil)
            self
            Spacer.width(alignment == .trailing ? value : nil)
        }
    }
}
