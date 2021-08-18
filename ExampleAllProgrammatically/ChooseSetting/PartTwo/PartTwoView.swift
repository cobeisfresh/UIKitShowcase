//
//  PartTwoView.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 18.08.2021..
//

import Foundation
import UIKit

class PartTwoView: UIView {
    
    private lazy var coverImage = UIImageView()
    private lazy var partTwoLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
    }
    
    
    private func configure() {
        setupView()
        setupConstraints()
    }
    
    private func setupView() {
        backgroundColor = .darkGray
        
        coverImage.image = UIImage(named: "cover")
        addSubview(coverImage)
        
        partTwoLabel.text = "PART TWO - VIEW - programmatically added"
        partTwoLabel.textColor = .black
        partTwoLabel.backgroundColor = .white
        partTwoLabel.textAlignment = .center
        partTwoLabel.numberOfLines = 0
        partTwoLabel.layer.masksToBounds = true
        partTwoLabel.layer.cornerRadius = 25
        
        addSubview(partTwoLabel)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.useAndActivateConstraints(constraints: [
            coverImage.heightAnchor.constraint(equalToConstant: 200),
            coverImage.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            coverImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            coverImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            
            partTwoLabel.heightAnchor.constraint(equalToConstant: 50),
            partTwoLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            partTwoLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            partTwoLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
        ])
    }
}
