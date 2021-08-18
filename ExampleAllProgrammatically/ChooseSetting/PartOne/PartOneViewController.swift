//
//  PartOneViewController.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 18.08.2021..
//

import UIKit

class PartOneViewController: UIViewController {
    
    @IBOutlet weak var partOneLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    let settingTitle: String
    
    init(title: String) {
        self.settingTitle = title
        super.init(nibName: "PartOneViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        partOneLabel.text = "\(settingTitle) - PART ONE - VIEW CONTROLLER - .xib"
        partOneLabel.font = UIFont.systemFont(ofSize: 22)
        partOneLabel.backgroundColor = .white
        partOneLabel.textColor = .black
        partOneLabel.layer.masksToBounds = true
        partOneLabel.layer.cornerRadius = 25
       
        
        setupBackgroundImage(optionName: settingTitle)
    }
    
    private func setupBackgroundImage(optionName: String) {
        backgroundImage.image = UIImage(named: optionName)
        backgroundImage.contentMode = .scaleAspectFit
    }
}
