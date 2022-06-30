//
//  Theme.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import Foundation

// MARK: - Theme Enum
enum Theme: Int, CaseIterable {
    case system
    case light
    case dark
    case sunset
    
    var text: String {
        switch self {
        case .system: return "System Default"
        case .light: return "Light"
        case .dark: return "Dark"
        case .sunset: return "Sunset"
        }
    }
    
}
