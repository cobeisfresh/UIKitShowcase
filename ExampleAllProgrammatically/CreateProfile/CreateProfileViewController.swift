//
//  ViewController.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 11.08.2021..
//

import UIKit

class CreateProfileViewController: UIViewController {
    
    private lazy var createProfileView = CreateProfileView()

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
        createProfileView.onCreateTapped = { [weak self] name, email, pass in
            let profile = Profile(name: name, email: email, password: pass)
            let vc = ProfileViewController(profile: profile)
            self?.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

