//
//  ViewController.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 11.08.2021..
//

import UIKit

class CreateProfileViewController: UIViewController {
    
    private lazy var createProfileView = CreateProfileView()
    static var profile = Profile()
    
    
    override func loadView() {
        view = createProfileView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        addCallBacks()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createProfileView.nameTextField.text = ""
        createProfileView.emailTextField.text = ""
        createProfileView.passwordTextField.text = ""
    }
    
    private func setupNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
    private func addCallBacks() {
        createProfileView.onSaveTapped = { [weak self] name, email, pass in
            CreateProfileViewController.profile = Profile(name: name, email: email, password: pass)
            let vc = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
//            vc.profile = CreateProfileViewController.profile
            ///
//            vc.profileView.recivedName = name
            self?.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
}

