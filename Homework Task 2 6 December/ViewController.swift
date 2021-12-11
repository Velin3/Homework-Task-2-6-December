//
//  ViewController.swift
//  Homework Task 2 6 December
//
//  Created by Елена Иванова on 12/8/21.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var startBotton: UIButton!
    
    private var currentLigth = CurrentLight.red
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startBotton.layer.cornerRadius = 10
        
        redColor.alpha = lightIsOff
        yellowColor.alpha = lightIsOff
        greenColor.alpha = lightIsOff
        
        print ("Размер стороны, доступный в методе viewDidLoad: \(redColor.frame.height)")
    }

    override func viewWillLayoutSubviews() {
        redColor.layer.cornerRadius = redColor.frame.width / 2
        yellowColor.layer.cornerRadius = yellowColor.frame.width / 2
        greenColor.layer.cornerRadius = greenColor.frame.width / 2
        
        print ("Размер стороны, доступный в методе viewWillLayoutSubviews: \(redColor.frame.height)")
    }
    
    @IBAction func startPress() {
       
            startBotton.setTitle("NEXT", for: .normal)
    
   
  
        
        
    
    
    switch currentLigth {
    case .red:
        greenColor.alpha = lightIsOff
        redColor.alpha = lightIsOn
        currentLigth = .yellow
        
    case .yellow:
        redColor.alpha = lightIsOff
        yellowColor.alpha = lightIsOn
        currentLigth = .green
        
    case .green:
        greenColor.alpha = lightIsOn
        yellowColor.alpha = lightIsOff
        currentLigth = .red
    }
}
}
