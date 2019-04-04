//
//  MenuOption.swift
//  ApplicationFood
//
//  Created by Nick Rebollo on 3/24/19.
//  Copyright © 2019 Nick Rebollo. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible {
    
    
    case Restaurants
    case Orders
    case Account
    case AboutUs
    case Settings
    case Logout
    
    var description: String {
        switch self{
            
            case .Restaurants: return "Restaurants"
            case .Orders: return "Orders"
            case .Account: return "Account"
            case .AboutUs: return "About Us"
            case .Settings: return "Settings"
            case .Logout: return "Logout"
            }
    }
    
    var image: UIImage {
        switch self{
            
        case .Restaurants: return UIImage(named: "restaurant" ) ?? UIImage()
        case .Orders: return UIImage(named: "Order_icon" ) ?? UIImage()
        case .Account: return UIImage(named: "ic_person_outline_white_2x" ) ?? UIImage()
        case .AboutUs: return UIImage(named: "ic_mail_outline_white_2x" ) ?? UIImage()
        case .Settings: return UIImage(named: "baseline_settings_white_24dp" ) ?? UIImage()
        case .Logout: return UIImage(named: "logout" ) ?? UIImage()
        }
    }
}
