//
//  Theme+UIImage.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

// MARK: - Theme Images & Icons
// MARK: - Main
extension Theme {
    
    var iconTheme: UIImage? {
        switch self {
        case .dark: return UIImage(named: "icon_dark_main_theme")
        case .light: return UIImage(named: "icon_light_main_theme")
        case .sunset: return UIImage(named: "icon_sunset_main_theme")
        case .system: return UIImage(named: "icon_main_theme")
        }
    }
    
}
