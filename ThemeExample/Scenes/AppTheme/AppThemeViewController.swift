//
//  AppThemeViewController.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

final class AppThemeViewController: UIViewController {
    
    @IBOutlet private weak var tableView: UITableView! {
        willSet {
            newValue.backgroundColor = .clear
            newValue.rowHeight = 44
            newValue.bounces = false
            newValue.delegate = self
            newValue.dataSource = self
            newValue.register(UINib(nibName: "AppThemeTableViewCell", bundle: nil), forCellReuseIdentifier: "AppThemeTableViewCell")
        }
    }
    
    private var currentTheme = ThemeConfigurator.shared.currentTheme
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        view.backgroundColor = .backgroundPrimary
        title = "Change Theme"
    }
    
}

// MARK: - Table View Delegate & Data Source
extension AppThemeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Theme.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "AppThemeTableViewCell", for: indexPath) as? AppThemeTableViewCell,
            let theme = Theme(rawValue: indexPath.row)
        else {
            return UITableViewCell()
        }
        cell.configureCell(theme: theme)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if currentTheme == Theme.allCases[indexPath.row] {
            return
        }
        currentTheme = Theme.allCases[indexPath.row]
        ThemeConfigurator.shared.setCurrentTheme(currentTheme)
        tableView.reloadData()
        applyTheme(theme: currentTheme)
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.setSelected(currentTheme == Theme.allCases[indexPath.row], animated: false)
    }
    
}

// MARK: - Apply Theme
private extension AppThemeViewController {
    
    func applyTheme(theme: Theme) {
        guard
            let appDelegate = UIApplication.shared.delegate as? AppDelegate,
            let window = appDelegate.window
        else {
            return
        }
        UIView.transition (with: window, duration: 0.3, options: .transitionCrossDissolve, animations: {
            if let mainViewController = self.navigationController?.viewControllers.first as? MainViewController {
                mainViewController.updateView()
            }
            if let navigationController = self.parent as? UINavigationController {
                navigationController.navigationBar.setAppearance()
            }
            self.view.backgroundColor = .backgroundPrimary
            self.tableView.visibleCells.forEach { cell in
                guard let appThemeCell = cell as? AppThemeTableViewCell else {
                    return
                }
                appThemeCell.themeLabel.textColor = .objectPrimary
            }
        }, completion: nil)
    }
    
}
