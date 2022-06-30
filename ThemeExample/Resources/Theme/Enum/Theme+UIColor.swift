//
//  Theme+UIColor.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

// MARK: - Theme Colors
// MARK: - Background Colors
extension Theme {
    
    var backgroundPrimary: UIColor? {
        switch self {
        case .light: return UIColor(named: "color_light_background_primary")
        case .dark: return UIColor(named: "color_dark_background_primary")
        case .sunset: return UIColor(named: "color_sunset_background_primary")
        case .system: return UIColor(named: "color_background_primary")
        }
    }
    
    var backgroundSecondary: UIColor? {
        switch self {
        case .light: return UIColor(named: "color_light_background_secondary")
        case .dark: return UIColor(named: "color_dark_background_secondary")
        case .sunset: return UIColor(named: "color_sunset_background_secondary")
        case .system: return UIColor(named: "color_background_secondary")
        }
    }
    
}

// MARK: - Object Colors
extension Theme {
    
    var objectPrimary: UIColor? {
        switch self {
        case .light: return UIColor(named: "color_light_object_primary")
        case .dark: return UIColor(named: "color_dark_object_primary")
        case .sunset: return UIColor(named: "color_sunset_object_primary")
        case .system: return UIColor(named: "color_object_primary")
        }
    }
    
    var objectSecondary: UIColor? {
        switch self {
        case .light: return UIColor(named: "color_light_object_secondary")
        case .dark: return UIColor(named: "color_dark_object_secondary")
        case .sunset: return UIColor(named: "color_sunset_object_secondary")
        case .system: return UIColor(named: "color_object_secondary")
        }
    }
    
    var objectHighlighted: UIColor? {
        switch self {
        case .light: return UIColor(named: "color_light_object_highlighted")
        case .dark: return UIColor(named: "color_dark_object_highlighted")
        case .sunset: return UIColor(named: "color_sunset_object_highlighted")
        case .system: return UIColor(named: "color_object_highlighted")
        }
    }
    
    var objectWhite: UIColor? {
        switch self {
        case .light: return UIColor(named: "color_light_object_white")
        case .dark: return UIColor(named: "color_dark_object_white")
        case .sunset: return UIColor(named: "color_sunset_object_white")
        case .system: return UIColor(named: "color_object_white")
        }
    }
    
}
