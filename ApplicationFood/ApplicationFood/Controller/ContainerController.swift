//
//  ContainerController.swift
//  ApplicationFood
//
//  Created by Nick Rebollo on 3/24/19.
//  Copyright © 2019 Nick Rebollo. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    //Properties
    var menuController: MenuController!
    var centerController: UIViewController!
    var isExpanded = false
    
    //Inialize
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent 
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    override var prefersStatusBarHidden: Bool {
        return isExpanded
    }
    
    //Handlers
    func configureHomeController() {
        let homeController = HomeController()
        homeController.delegate = self
        centerController = UINavigationController(rootViewController: homeController)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configureMenuController() {
        if menuController == nil {
            menuController = MenuController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
        }
    }
    
    func animatePanel(shouldExpand: Bool, menuOption: MenuOption?) {
        if shouldExpand{
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseIn,
                           animations: {
                            
                            self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                            
                            }, completion: nil)
        }else{
            UIView.animate(withDuration: 0.5,
                           delay: 0, usingSpringWithDamping: 0.8,
                           initialSpringVelocity: 0,
                           options: .curveEaseIn,
                           animations: { self.centerController.view.frame.origin.x = 0 })
            { (_) in
                guard let menuOption = menuOption else { return }
                self.didSelectMenuOption(menuOption: menuOption)
            }
        }
        
        animateStatusBar()
        
    }
    
    func  didSelectMenuOption(menuOption: MenuOption) {
        switch menuOption{
        case .Restaurants:
            let controller = RestaurantsController()
            present(UINavigationController(rootViewController: controller), animated: true, completion: nil)
        case .Orders:
            print("Show Orders")
        case .Account:
            print("Show Account")
        case .AboutUs:
            print("Show About Us")
        case .Settings:
            let controller = SettingsController()
            present(UINavigationController(rootViewController: controller), animated: true, completion: nil)
        case .Logout: 
            //print("Show Logout")
            dismiss(animated: true, completion: nil)
        }
    }
    
    func animateStatusBar() {
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.8,
                       initialSpringVelocity: 0,
                       options: .curveEaseIn,
                       animations: {
                        
                        self.setNeedsStatusBarAppearanceUpdate()
                        
        }, completion: nil)
    }
    
}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        if !isExpanded {
            configureMenuController()
        }
        
        isExpanded = !isExpanded
        animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
    }
}
