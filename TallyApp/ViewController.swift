//
//  ViewController.swift
//  TallyApp
//
//  Created by Jacob Davis on 9/28/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var descriptorOfInterval: UILabel!
    @IBOutlet weak var interval: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var userInput: UITextField!
    var countTotal: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resetButtonPressed(_ sender: Any) {
        countTotal = 0
        counterLabel.text = "0"
        interval.text = "1"
        descriptorOfInterval.text = "Increasing by:"
    }
    
    @IBAction func counterButton(_ sender: Any) {
    guard let addToCount = Int(interval.text!) else {return}
        
        countTotal += addToCount
        counterLabel.text = String(countTotal)
    }
    
    @IBAction func setToChangeBy(_ sender: Any) {
        guard let intervalRate = Int(userInput.text ?? "1") else {return}
        
       if intervalRate < 0 {
            descriptorOfInterval.text = "Decreasing by:"
        } else {
            descriptorOfInterval.text = "Increasing by:"
        }
        
        interval.text = String(intervalRate)
    }
}

