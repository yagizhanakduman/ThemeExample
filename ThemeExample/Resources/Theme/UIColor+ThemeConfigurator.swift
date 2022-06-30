//
//  UIColor+ThemeConfigurator.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

// MARK: - Background Colors
extension UIColor {
    
    /// light theme - white, dark theme - dark gray, sunset theme - 
    class var backgroundPrimary: UIColor? {
        return ThemeConfigurator.shared.currentTheme.backgroundPrimary
    }
    
    /// light theme - off-white, dark theme - gray
    class var backgroundSecondary: UIColor? {
        return ThemeConfigurator.shared.currentTheme.backgroundSecondary
    }
    
}

// MARK: - Object Colors
extension UIColor {
    
    /// light theme - black, dark theme - white
    class var objectPrimary: UIColor? {
        return ThemeConfigurator.shared.currentTheme.objectPrimary
    }
    
    /// light theme - dark gray, dark theme - off-white
    class var objectSecondary: UIColor? {
        return ThemeConfigurator.shared.currentTheme.objectSecondary
    }
    
    /// light theme - azure, dark theme - azure
    class var objectHighlighted: UIColor? {
        return ThemeConfigurator.shared.currentTheme.objectHighlighted
    }
    
    /// light theme - white, dark theme - white
    class var objectWhite: UIColor? {
        return ThemeConfigurator.shared.currentTheme.objectWhite
    }
    
}
