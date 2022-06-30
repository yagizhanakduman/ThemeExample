//
//  MainViewController.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet private weak var contentView: UIView! {
        willSet {
            newValue.backgroundColor = .clear
        }
    }
    
    @IBOutlet private weak var iconImageView: UIImageView! {
        willSet {
            newValue.image = .iconTheme
        }
    }
    
    @IBOutlet private weak var titleLabel: UILabel! {
        willSet {
            newValue.textColor = .objectPrimary
            newValue.font = .systemFont(ofSize: 16, weight: .bold)
            newValue.text = "You can change the theme"
        }
    }
    
    @IBOutlet private weak var changeButton: UIButton! {
        willSet {
            newValue.setTitle("Change Theme", for: .normal)
            newValue.backgroundColor = .objectHighlighted
            newValue.setTitleColor(.objectWhite, for: .normal)
            newValue.titleLabel?.font = .systemFont(ofSize: 16, weight: .bold)
            newValue.layer.cornerRadius = newValue.frame.height / 2
            newValue.contentEdgeInsets =  UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .backgroundPrimary
        title = "Main"
    }
    
    @IBAction private func changeAction(_ sender: Any) {
        let appThemeViewController = AppThemeViewController(nibName: "AppThemeView", bundle: nil)
        navigationController?.pushViewController(appThemeViewController, animated: true)
    }
 
    func updateView() {
        view.backgroundColor = .backgroundPrimary
        titleLabel.textColor = .objectPrimary
        iconImageView.image = .iconTheme
    }
}
