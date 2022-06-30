//
//  UIImage+ThemeConfigurator.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

// MARK: - Main
extension UIImage {
    
    class var iconTheme: UIImage? {
        return ThemeConfigurator.shared.currentTheme.iconTheme
    }
    
}
