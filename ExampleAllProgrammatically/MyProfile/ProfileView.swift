//
//  MyProfileView.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 11.08.2021..
//

import UIKit
import SnapKit

class ProfileView: UIView {

    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var settingsButton: UIButton!
    
   
    private lazy var profileView = UIView()
    private lazy var backgroundView = UIView()
    private lazy var backgroundImage = UIImageView()
    private lazy var nameLabel = UILabel()
    private lazy var emailLabel = UILabel()
    private lazy var passwordLabel = UILabel()
    
    var onSettingsTapped: (()->Void)?
    
        
    func setProfile(profile: Profile) {
        nameLabel.text = profile.name
        emailLabel.text = profile.email
        passwordLabel.text = profile.password
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        setupConstraints()
        makeConstraintsWithSnapKit()
    }
    
    private func setupView() {
        coverImageView.image = UIImage(named: "cover")
        coverImageView.contentMode = .scaleToFill
        profileImage.image = UIImage(named: "rick")
        profileImage.contentMode = .scaleAspectFit
        profileImage.makeRounded()
        
        settingsButton.setImage(UIImage(named: "setWhite"), for: .normal)
        addSubview(settingsButton)
        
        addSubview(backgroundView)
        
        backgroundImage.image = UIImage(named: "backgroundImage")
        addSubview(backgroundImage)
        
        profileImage.layer.zPosition = CGFloat(Float.greatestFiniteMagnitude)
        profileView.layer.cornerRadius = 25
        profileView.backgroundColor = .lightGray.withAlphaComponent(0.7)
        backgroundImage.addSubview(profileView)
        
        nameLabel.text = "sasa"
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
        nameLabel.textAlignment = .center
        nameLabel.backgroundColor = .white
        nameLabel.layer.cornerRadius = 10
        profileView.addSubview(nameLabel)
        emailLabel.text = "sasa@gmail.com"
        
        emailLabel.textAlignment = .center
        emailLabel.backgroundColor = .white
        emailLabel.layer.cornerRadius = 25
        profileView.addSubview(emailLabel)
        passwordLabel.text = "12345"
        
        passwordLabel.textAlignment = .center
        passwordLabel.backgroundColor = .white
        passwordLabel.layer.cornerRadius = 25
        profileView.addSubview(passwordLabel)
    
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.useAndActivateConstraints(constraints: [
            
            backgroundView.topAnchor.constraint(equalTo: coverImageView.bottomAnchor, constant: 0),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            backgroundImage.topAnchor.constraint(equalTo: backgroundView.topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor, constant: 0),
            backgroundImage.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant:0),
            
//            settingsButton.heightAnchor.constraint(equalToConstant: 35),
//            settingsButton.widthAnchor.constraint(equalToConstant: 35),
//            settingsButton.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: -30),
//            settingsButton.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -30),
            
            
//            profileView.topAnchor.constraint(equalTo: backgroundImage.topAnchor, constant: 50),
//            profileView.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -30),
//            profileView.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 30),
//            profileView.trailingAnchor.constraint(equalTo: backgroundImage.trailingAnchor, constant: -30),
//
//
//            nameLabel.heightAnchor.constraint(equalToConstant: 50),
//            nameLabel.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 50),
//            nameLabel.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 50),
//            nameLabel.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -50),
//
//            emailLabel.heightAnchor.constraint(equalToConstant: 50),
//            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 50),
//            emailLabel.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 50),
//            emailLabel.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -50),
//
//            passwordLabel.heightAnchor.constraint(equalToConstant: 50),
//            passwordLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 50),
//            passwordLabel.leadingAnchor.constraint(equalTo: profileView.leadingAnchor, constant: 50),
//            passwordLabel.trailingAnchor.constraint(equalTo: profileView.trailingAnchor, constant: -50),
        ])
    }
    
    private func makeConstraintsWithSnapKit() {
        profileView.snp.makeConstraints { myProfileView in
            myProfileView.top.equalTo(backgroundImage.snp.top).offset(50)
            myProfileView.bottom.equalTo(backgroundImage.snp.bottom).offset(-30)
            myProfileView.leading.equalTo(backgroundImage.snp.leading).offset(30)
            myProfileView.trailing.equalTo(backgroundImage.snp.trailing).offset(-30)
        }
        
        nameLabel.snp.makeConstraints { myNameLabel in
            myNameLabel.height.equalTo(50)
            myNameLabel.top.equalTo(profileView.snp.top).offset(50)
            myNameLabel.leading.equalTo(profileView.snp.leading).offset(50)
            myNameLabel.trailing.equalTo(profileView.snp.trailing).offset(-50)
        }
        
        emailLabel.snp.makeConstraints { myEmailLabel in
            myEmailLabel.height.equalTo(50)
            myEmailLabel.top.equalTo(nameLabel.snp.bottom).offset(50)
            myEmailLabel.leading.equalTo(profileView.snp.leading).offset(50)
            myEmailLabel.trailing.equalTo(profileView.snp.trailing).offset(-50)
        }
    
        passwordLabel.snp.makeConstraints { myPasswordLabel in
            myPasswordLabel.height.equalTo(50)
            myPasswordLabel.top.equalTo(emailLabel.snp.bottom).offset(50)
            myPasswordLabel.leading.equalTo(profileView.snp.leading).offset(50)
            myPasswordLabel.trailing.equalTo(profileView.snp.trailing).offset(-50)
        }
    }
    
    @IBAction func settingsButtonTapped(_ sender: Any) {
        onSettingsTapped?()
    }
    
}
