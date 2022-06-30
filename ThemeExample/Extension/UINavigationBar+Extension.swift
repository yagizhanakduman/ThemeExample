//
//  UINavigationBar+Extension.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

extension UINavigationBar {
    
    func setAppearance() {
        barTintColor = .backgroundSecondary
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.shadowColor = UIColor.clear
            appearance.backgroundColor = .backgroundSecondary
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: .objectWhite ?? UIColor.white]
            standardAppearance = appearance
            scrollEdgeAppearance = appearance
        } else {
            titleTextAttributes = [NSAttributedString.Key.foregroundColor: .objectWhite ?? UIColor.white]
            backgroundColor = .backgroundSecondary
        }
    }
    
}
