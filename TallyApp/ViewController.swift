//
//  ViewController.swift
//  TallyApp
//
//  Created by Jacob Davis on 9/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var interval: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var userInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func counterButton(_ sender: Any) {
        if let numberToIncrementOrDecrement = Int(interval.text!) {
            
        }
        
        
    }
    
    @IBAction func setToChangeBy(_ sender: Any) {
        guard let intervalRate = Int(userInput.text ?? "1") else {return}
        interval.text = String(intervalRate)
        
    }
}

