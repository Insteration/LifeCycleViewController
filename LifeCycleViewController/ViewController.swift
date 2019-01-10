//
//  ViewController.swift
//  LifeCycleViewController
//
//  Created by Artem Karmaz on 1/10/19.
//  Copyright © 2019 Johansson Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func openSecondViewControllerButton(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            let dvc = segue.destination as! SecondViewController
            dvc.someProperties = ""
        }
    }
}

