//
//  ViewController.swift
//  Twabler
//
//  Created by Ariel Takvam on 2/13/19.
//  Copyright © 2019 Sycorax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var TweetImageViewContainer: UIView!
    @IBOutlet weak var TweetImageView: UIImageView!
    
    @IBOutlet weak var TweetTableView: UITableView!
    @IBOutlet weak var TweetTableViewCell: UITableViewCell!
    
    @IBOutlet weak var TabBar: UITabBar!
    @IBOutlet weak var TabBarHomeButton: UITabBarItem!
    @IBOutlet weak var TabBarAboutButton: UITabBarItem!
    @IBOutlet weak var TabBarSettingsButton: UITabBarItem!
    
    @IBOutlet weak var BlurView: UIView!
    
    
    
    
    @IBAction func ForgotPasswordButton(_ sender: Any) {
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }


}

