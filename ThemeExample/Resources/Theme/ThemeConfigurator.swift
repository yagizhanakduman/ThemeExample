//
//  ThemeConfigurator.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

final class ThemeConfigurator {
    
    static let shared = ThemeConfigurator()
    
    let userDefaultsThemeKey = "ThemeConfigurator"
    
    private init() {
        currentTheme = theme
    }
    
    var currentTheme: Theme = .system
     
    private var theme: Theme {
        get {
            let savedTheme = UserDefaults.standard.integer(forKey: userDefaultsThemeKey)
            return Theme(rawValue: savedTheme) ?? .system
        }
        set {
            UserDefaults.standard.setValue(newValue.rawValue, forKey: userDefaultsThemeKey)
            currentTheme = newValue
        }
    }
    
    func setCurrentTheme(_ theme: Theme) {
        self.theme = theme
    }
    
}
