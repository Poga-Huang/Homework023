//
//  ViewController.swift
//  Homework023
//
//  Created by 黃柏嘉 on 2021/11/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBAction func startOrStop(_ sender: UISwitch) {
        if sender.isOn == true{
            activityIndicator.startAnimating()
        }else{
            activityIndicator.stopAnimating()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

