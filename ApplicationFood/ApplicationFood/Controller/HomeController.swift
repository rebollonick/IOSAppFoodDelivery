//
//  HomeController.swift
//  ApplicationFood
//
//  Created by Nick Rebollo on 3/24/19.
//  Copyright © 2019 Nick Rebollo. All rights reserved.
//

import UIKit
 
class HomeController: UIViewController {
    
    //Properties
    var delegate: HomeControllerDelegate?
    
    
    //Inialize
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configureNavigationBar()
    }
    
    //Handlers
    @objc  func handleMenuToggle(){
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Feed's Deeds"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal),
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(handleMenuToggle))
    }
 }
