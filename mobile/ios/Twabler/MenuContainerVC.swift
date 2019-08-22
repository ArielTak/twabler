//
//  MenuContainerVC.swift
//  Twabler
//
//  Created by Ariel Takvam on 8/14/19.
//  Copyright © 2019 Sycorax. All rights reserved.
//

import UIKit

class MenuContainerVC: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu),
                                               name: NSNotification.Name("ToggleSideMenu"),
                                               object: nil)
    }
    
    @objc func toggleSideMenu() {
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -240 /*this should probably be "safe area constraint" instead of a hard-coded number*/
        } else {
            sideMenuOpen = true 
            sideMenuConstraint.constant = 0
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}
