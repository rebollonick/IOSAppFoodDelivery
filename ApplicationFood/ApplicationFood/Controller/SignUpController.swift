//
//  SignUpController.swift
//  ApplicationFood
//
//  Created by Nick Rebollo on 3/25/19.
//  Copyright © 2019 Nick Rebollo. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {
    
    //Properties
    var signUpView: SignUpView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpViews()
    }
    
    func setUpViews() {
        let signUpView = SignUpView(frame: self.view.frame)
        self.signUpView = signUpView
        self.signUpView.submitAction = submitPressed
        self.signUpView.cancelAction = cancelPressed
        view.addSubview(signUpView)
    }
    
    func submitPressed() {
        let containerController = ContainerController()
        present(containerController, animated: false, completion: nil)
    }
    
    func cancelPressed() {
        dismiss(animated: true, completion: nil)
    }
    
}
