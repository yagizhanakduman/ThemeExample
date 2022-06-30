//
//  AppThemeTableViewCell.swift
//  ThemeExample
//
//  Created by YAGIZHAN AKDUMAN on 22.06.2022.
//

import UIKit

final class AppThemeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var themeLabel: UILabel! {
        willSet {
            newValue.textColor = .objectPrimary
            newValue.font = .systemFont(ofSize: 15, weight: .semibold)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        selectionStyle = .none
    }
    
    func configureCell(theme: Theme) {
        themeLabel.text = theme.text
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        accessoryType = isSelected ? .checkmark : .none
    }
    
}
