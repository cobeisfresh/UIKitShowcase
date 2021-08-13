//
//  ProfileViewController.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 11.08.2021..
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet var profileRealView: ProfileView!
    
    let profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
        super.init(nibName: "ProfileViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileRealView.setProfile(profile: profile)
        
        addCallbacks()
    }
    
    private func addCallbacks() {
        profileRealView.onSettingsTapped = { [weak self] in
            
            let storyboard = UIStoryboard(name: "Settings", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "SettingsViewController")
            self?.present(vc, animated: true)
        }
    }
    
}
