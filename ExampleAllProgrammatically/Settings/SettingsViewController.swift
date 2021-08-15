//
//  SettingsViewController.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 13.08.2021..
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsTableView: UITableView!
    @IBOutlet weak var navigationView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let settings: [String] = [ "Login", "Setup PIN", "Language", "Change Font", "Theme"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsTableView.delegate = self
        settingsTableView.dataSource = self
        
        registerNib()
        setupView()
    }
    
    private func registerNib() {
        settingsTableView.register(UINib(nibName: "SettingsTableViewCell", bundle: nil), forCellReuseIdentifier: "SettingsTableViewCell")
    }
    
    private func setupView() {
        settingsTableView.backgroundColor = .black
        navigationView.backgroundColor = .black
        titleLabel.text = "Settings"
        titleLabel.textColor = .white
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
    }
    
}


extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SettingsTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell") as? SettingsTableViewCell
        
        cell.setupView(label: settings[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell: SettingsTableViewCell! = tableView.dequeueReusableCell(withIdentifier: "SettingsTableViewCell") as? SettingsTableViewCell
        
        dismiss(animated: true, completion: nil)
    
    }
}

