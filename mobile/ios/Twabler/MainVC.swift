//
//  MainVC.swift
//  Twabler
//
//  Created by Ariel Takvam on 8/21/19.
//  Copyright © 2019 Sycorax. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Twabler"
    }
    

    @IBAction func onMenuIconTapped() {
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"),
                                        object: nil)
    }

}
