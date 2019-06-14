//
//  ViewController.swift
//  DDPublic
//
//  Created by DuanChangHe on 06/14/2019.
//  Copyright (c) 2019 DuanChangHe. All rights reserved.
//

import UIKit
import DDPublic

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        DefaultWireframe.shared.open(url: URL(string: "")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

