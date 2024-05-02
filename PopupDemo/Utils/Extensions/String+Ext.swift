//
//  String+Ext.swift
//  PopupDemo
//
//  Created by Thach Nguyen Trong on 5/2/24.
//

import SwiftUI

extension String {
    func camelCaseToKebabCase() -> String {
        unicodeScalars
            .dropFirst()
            .reduce(String(prefix(1))) { CharacterSet.uppercaseLetters.contains($1) ? $0 + "-" + String($1) : $0 + String($1) }
            .lowercased()
    }
}
