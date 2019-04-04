//
//  Settings.swift
//  ApplicationFood
//
//  Created by Nick Rebollo on 3/24/19.
//  Copyright © 2019 Nick Rebollo. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "SettingsCell"

class SettingsController: UIViewController {
    
    //Properties
    //var tableView: UITableView!
    //var userInfoHeading: UserInfoHeading!
    
    //Initilize
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        //configureTableView()
    }
    
    //Selectors
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    //Helper Functions
    func configureUI() {
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .red
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Settings"
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "baseline_clear_white_36pt_3x").withRenderingMode(.alwaysOriginal),
                                                           style: .plain,
                                                           target: self,
                                                           action: #selector(handleDismiss))
    }
    /*
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60
        
        tableView.register(SettingCell.self, forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(tableView)
        tableView.frame = view.frame
        
        let frame = CGRect(x: 0, y: 88, width: view.frame.width, height: 100)
        userInfoHeading = UserInfoHeading(frame: frame)
        tableView.tableHeaderView = userInfoHeading
        tableView.tableFooterView = UIView()
    }

    
    func configureUISetting() {
        configureTableView()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.barTintColor = UIColor(red: 55/255,
                                                                   green: 120/255,
                                                                   blue: 250/255,
                                                                   alpha: 1)
    }
 
    
    
    extension SettingsController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView,
                       numberOfRowsInSection section: Int) -> Int {
            return 5
        }
        
        func tableView(_ tableView: UITableView,
                       cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier,
                                                     for: indexPath) as! SettingCell
            return cell
        }
    }
    */
}
