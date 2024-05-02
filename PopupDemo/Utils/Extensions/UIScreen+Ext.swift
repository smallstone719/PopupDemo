//
//  UIScreen+Ext.swift
//  PopupDemo
//
//  Created by Thach Nguyen Trong on 5/2/24.
//

import SwiftUI

// MARK: -iOS & tvOS Implementation
#if os(iOS) || os(tvOS)
class Screen {
    static var safeAreaInsets: UIEdgeInsets = UIScreen.safeAreaInsets
}
fileprivate extension UIScreen {
    static var safeAreaInsets: UIEdgeInsets {
        UIApplication.shared
            .connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap(\.windows)
            .first(where: \.isKeyWindow)?
            .safeAreaInsets ?? .zero
    }
}


// MARK: - macOS Implementation
#elseif os(macOS)
class Screen {
    static var safeArea: NSEdgeInsets = NSScreen.safeArea
}
fileprivate extension NSScreen {
    static var safeArea: NSEdgeInsets =
    NSApplication.shared
        .mainWindow?
        .contentView?
        .safeAreaInsets ?? .init(top: 0, left: 0, bottom: 0, right: 0)
}
#endif
