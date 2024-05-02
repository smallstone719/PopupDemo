//
//  PopupDemoApp.swift
//  PopupDemo
//
//  Created by Thach Nguyen Trong on 5/2/24.
//

import SwiftUI
import MijickPopupView

@main
struct PopupDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .implementPopupView(config: configurePopup)
        }
    }
}
private extension PopupDemoApp {
    func configurePopup(_ config: GlobalConfig) -> GlobalConfig { config
        .top { $0
            .cornerRadius(24)
            .dragGestureEnabled(true)
        }
        .centre { $0
            .tapOutsideToDismiss(false)
        }
        .bottom { $0
            .stackLimit(4)
        }
    }
}
