//
//  EnterNameView.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 11.08.2021..
//

import UIKit

class CreateProfileView: UIView {

    //MARK: - Outlets
    private lazy var backgroundImage = UIImageView()
    private lazy var navigationView = UIView()
    private lazy var titleLabel = UILabel()
    private lazy var createProfileView = UIView()
    private lazy var nameLabel = UILabel()
    lazy var nameTextField = UITextField()
    private lazy var emailLabel = UILabel()
    lazy var emailTextField = UITextField()
    private lazy var passwordLabel = UILabel()
    lazy var passwordTextField = UITextField()
    private lazy var showPasswordButton = UIButton(type: .system)
    private lazy var createButton = UIButton(type: .system)
    
    private var themeColor = UIColor.lightGray.withAlphaComponent(0.7)
    var onCreateTapped: ((String, String, String)->Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        backgroundImage.image = UIImage(named: "backgroundImage")
        addSubview(backgroundImage)
        
        navigationView.backgroundColor = .clear
        addSubview(navigationView)
        
        titleLabel.text = "Create profile"
        titleLabel.backgroundColor = .clear
        titleLabel.textColor = .white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
        titleLabel.textAlignment = .center
        navigationView.addSubview(titleLabel)
        
        ///
        createProfileView.backgroundColor = themeColor
        createProfileView.layer.cornerRadius = 25
        addSubview(createProfileView)
        
        //
        nameLabel.text = "NAME"
        nameLabel.backgroundColor = .clear
        nameLabel.textColor = .white
        nameLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        nameLabel.textAlignment = .left
        createProfileView.addSubview(nameLabel)
        
        //
        nameTextField.backgroundColor = .white
        nameTextField.layer.cornerRadius = 15.0
        nameTextField.layer.borderWidth = 2.0
        nameTextField.layer.borderColor = UIColor.lightGray.cgColor
        nameTextField.placeholder = "Enter your name"
        nameTextField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
        nameTextField.tintColor = .lightGray
        createProfileView.addSubview(nameTextField)
        
        //
        emailLabel.text = "EMAIL"
        emailLabel.backgroundColor = .clear
        emailLabel.textColor = .white
        emailLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        emailLabel.textAlignment = .left
        createProfileView.addSubview(emailLabel)
        
        //
        emailTextField.backgroundColor = .white
        emailTextField.layer.cornerRadius = 15.0
        emailTextField.layer.borderWidth = 2.0
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.placeholder = "Enter your email address"
        emailTextField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
        emailTextField.tintColor = .lightGray
        createProfileView.addSubview(emailTextField)
        
        //
        passwordLabel.text = "PASSWORD"
        passwordLabel.backgroundColor = .clear
        passwordLabel.textColor = .white
        passwordLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
        passwordLabel.textAlignment = .left
        createProfileView.addSubview(passwordLabel)
        
        //
        passwordTextField.backgroundColor = .white
        passwordTextField.layer.cornerRadius = 15.0
        passwordTextField.layer.borderWidth = 2.0
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.placeholder = "Enter your name"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.layer.sublayerTransform = CATransform3DMakeTranslation(10, 0, 0);
        passwordTextField.tintColor = .lightGray
        showPasswordButton.addTarget(self, action: #selector(showPasswordTapped), for: .touchUpInside)
        createProfileView.addSubview(passwordTextField)
        
        //
        showPasswordButton.setImage(UIImage(named: "inv"), for: .normal)
        createProfileView.addSubview(showPasswordButton)
        
        //
        createButton.backgroundColor = .red
        createButton.setTitleColor(.white, for: .normal)
        createButton.setTitle("Create", for: .normal)
        createButton.layer.cornerRadius = 15.0
        createButton.layer.borderWidth = 2.0
        createButton.layer.borderColor = UIColor.lightGray.cgColor
        createButton.addTarget(self, action: #selector(createTapped), for: .touchUpInside)
        createProfileView.addSubview(createButton)
        
    }
    
    
    private func setupConstraints() {
        NSLayoutConstraint.useAndActivateConstraints(constraints: [
            backgroundImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            //navigation
            navigationView.heightAnchor.constraint(equalToConstant: 100),
            navigationView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            navigationView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            navigationView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            //title navigation
            titleLabel.topAnchor.constraint(equalTo: navigationView.topAnchor, constant: 50),
            titleLabel.bottomAnchor.constraint(equalTo: navigationView.bottomAnchor, constant: -10),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            
            //create profile view
            createProfileView.topAnchor.constraint(equalTo: navigationView.bottomAnchor, constant: 30),
            createProfileView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            createProfileView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            createProfileView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            //name label
            nameLabel.heightAnchor.constraint(equalToConstant: 50),
            nameLabel.topAnchor.constraint(equalTo: createProfileView.topAnchor, constant: 50),
            nameLabel.leadingAnchor.constraint(equalTo: createProfileView.leadingAnchor, constant: 30),
            nameLabel.trailingAnchor.constraint(equalTo: createProfileView.trailingAnchor, constant: -30),
            
            //name textfield
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            nameTextField.widthAnchor.constraint(equalToConstant: 150),
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            nameTextField.leadingAnchor.constraint(equalTo: createProfileView.leadingAnchor, constant: 30),
            nameTextField.trailingAnchor.constraint(equalTo: createProfileView.trailingAnchor, constant: -30),
            
            //email label
            emailLabel.heightAnchor.constraint(equalToConstant: 50),
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 50),
            emailLabel.leadingAnchor.constraint(equalTo: createProfileView.leadingAnchor, constant: 30),
            emailLabel.trailingAnchor.constraint(equalTo: createProfileView.trailingAnchor, constant: -30),
            
            //email textfield
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            emailTextField.widthAnchor.constraint(equalToConstant: 150),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 5),
            emailTextField.leadingAnchor.constraint(equalTo: createProfileView.leadingAnchor, constant: 30),
            emailTextField.trailingAnchor.constraint(equalTo: createProfileView.trailingAnchor, constant: -30),
            
            //pass label
            passwordLabel.heightAnchor.constraint(equalToConstant: 50),
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 50),
            passwordLabel.leadingAnchor.constraint(equalTo: createProfileView.leadingAnchor, constant: 30),
            passwordLabel.trailingAnchor.constraint(equalTo: createProfileView.trailingAnchor, constant: -30),
            
            //pass textfield
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.widthAnchor.constraint(equalToConstant: 150),
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 5),
            passwordTextField.leadingAnchor.constraint(equalTo: createProfileView.leadingAnchor, constant: 30),
            passwordTextField.trailingAnchor.constraint(equalTo: createProfileView.trailingAnchor, constant: -30),
            
            //show password button
            showPasswordButton.heightAnchor.constraint(equalToConstant: 25),
            showPasswordButton.widthAnchor.constraint(equalToConstant: 25),
            showPasswordButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 12.5),
            showPasswordButton.bottomAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: -12.5),
            showPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor, constant: -20),
            
            //save button
            createButton.heightAnchor.constraint(equalToConstant: 50),
            createButton.leadingAnchor.constraint(equalTo: createProfileView.leadingAnchor, constant: 50),
            createButton.trailingAnchor.constraint(equalTo: createProfileView.trailingAnchor, constant: -50),
            createButton.bottomAnchor.constraint(equalTo: createProfileView.bottomAnchor, constant: -30),
        ])
    }
    
    @objc func createTapped() {
        onCreateTapped?(nameTextField.text ?? "", emailTextField.text ?? "", passwordTextField.text ?? "")
    }
    
    @objc func showPasswordTapped() {
        if passwordTextField.isSecureTextEntry {
            passwordTextField.isSecureTextEntry = false
        }
        else {
            passwordTextField.isSecureTextEntry = true
        }
    }
    
}
