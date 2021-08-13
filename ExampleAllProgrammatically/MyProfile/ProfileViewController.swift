//
//  ProfileViewController.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 11.08.2021..
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profile: Profile
    
    init(profile: Profile) {
        self.profile = profile
        super.init(nibName: "ProfileViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet var profileRealView: ProfileView!
    //var profileView = ProfileView()
    //var profile: Profile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileRealView.setProfile(profile: profile)
    }
    
}
