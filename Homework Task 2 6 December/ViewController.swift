//
//  ViewController.swift
//  Homework Task 2 6 December
//
//  Created by Елена Иванова on 12/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var buttonColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColor.layer.cornerRadius = 90
        yellowColor.layer.cornerRadius = 90
        greenColor.layer.cornerRadius = 90
    }

    @IBAction func startPress() {
    }
    
}

