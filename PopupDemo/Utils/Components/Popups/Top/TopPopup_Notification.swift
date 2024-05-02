//
//  TopPopup_Notification.swift
//  PopupDemo
//
//  Created by Thach Nguyen Trong on 5/2/24.
//

import SwiftUI
import MijickPopupView

struct TopPopup_Notification: TopPopup {
    func configurePopup(popup: TopPopupConfig) -> TopPopupConfig {
        popup
            .topPadding(Screen.safeAreaInsets.top)
            .horizontalPadding(16)
    }
    func createContent() -> some View {
        VStack(alignment: .customAlignment, spacing: 12) {
            createTopView()
            createDismissButton()
        }
        .padding(.top, 20)
        .padding(.bottom, 16)
        .padding(.leading, 20)
        .padding(.trailing, 32)
    }
}

private extension TopPopup_Notification {
    func createTopView() -> some View {
        HStack(spacing: 0) {
            createIcon()
            Spacer.width(12)
            createText()
            Spacer()
        }
    }
    func createDismissButton() -> some View {
        Button(action: dismiss) {
            Text("Dismiss".uppercased())
                .font(.openSansBold(13))
                .foregroundColor(.primary)
        }
        .alignmentGuide(.customAlignment, computeValue: { $0[.leading] })
    }
}

private extension TopPopup_Notification {
    func createIcon() -> some View {
        Image("heart")
            .resizable()
            .frame(16)
            .foregroundColor(.white)
            .frame(32)
            .background(Color.primary)
            .mask(Circle())
    }
    func createText() -> some View {
        Text("**Adam Johnson** liked your recent post on this thread")
            .font(.openSansRegular(14))
            .foregroundColor(.onBackgroundPrimary)
            .multilineTextAlignment(.leading)
            .fixedSize(horizontal: false, vertical: true)
            .alignmentGuide(.customAlignment, computeValue: { $0[.leading] })
    }
}


// MARK: -Alignment Helper
fileprivate extension HorizontalAlignment {
    static let customAlignment = HorizontalAlignment(CustomAlignment.self)

    struct CustomAlignment: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat { context[VerticalAlignment.bottom] }
    }
}

