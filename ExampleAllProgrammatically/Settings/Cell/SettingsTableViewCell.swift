//
//  SettingsTableViewCell.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 13.08.2021..
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    func setupView(label: String) {
        titleLabel.text = label
    }
    
}
