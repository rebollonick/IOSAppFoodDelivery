//
//  LoginController.swift
//  ApplicationFood
//
//  Created by Nick Rebollo on 3/25/19.
//  Copyright © 2019 Nick Rebollo. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    //Properties
    var loginView: LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .red
        setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
 
    func setUpView() {
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        self.loginView.loginAction = loginPressed
        self.loginView.signUpAction = signUpPressed
        self.view.addSubview(loginView)
        loginView.setAnchor(top: view.topAnchor,
                            left: view.leftAnchor,
                            bottom: view.bottomAnchor,
                            right: view.rightAnchor,
                            paddingTop: 0,
                            paddingLeft: 0,
                            paddingBottom: 0,
                            paddingRight: 0)
    }
    
    func loginPressed() {
        let containerController = ContainerController()
        present(containerController, animated: false, completion: nil)
    }
    
    func signUpPressed() {
        let signUpController = SignUpController()
        present(signUpController, animated: true, completion: nil)
    }
    
}
