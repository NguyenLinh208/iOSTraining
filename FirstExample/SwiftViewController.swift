//
//  SwiftViewController.swift
//  FirstExample
//
//  Created by グェン カン リン on 2015/04/10.
//  Copyright (c) 2015年 Gmom. All rights reserved.
//

import UIKit


class SwiftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let test = Test()
        test.firstName("nguyen", lastName:"khanhlinh")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
