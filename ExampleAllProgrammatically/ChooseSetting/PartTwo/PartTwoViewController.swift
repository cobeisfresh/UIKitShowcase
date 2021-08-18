//
//  PartTwoViewController.swift
//  ExampleAllProgrammatically
//
//  Created by cobe on 18.08.2021..
//

import UIKit

class PartTwoViewController: UIViewController {
    
    private lazy var partTwoView = PartTwoView()

    override func loadView() {
        view = partTwoView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
