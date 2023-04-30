//
//  ViewController.swift
//  ryu_kadai2
//
//  Created by 辻野竜志 on 2023/04/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var changeCalculation: UISegmentedControl!
    
    @IBOutlet weak var sumLabel: UILabel!
    
    @IBAction func didTapButton(_ sender: Any) {
        
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0
        
        switch changeCalculation.selectedSegmentIndex {
        case 0:
            sumLabel.text = "\(num1 + num2)"
        case 1:
            sumLabel.text = "\(num1 - num2)"
        case 2:
            sumLabel.text = "\(num1 * num2)"
        case 3:
            if num2 == 0 {
                sumLabel.text = "割る数には0以外を入力して下さい"
            } else {
                sumLabel.text = "\(num1 / num2)"
            }
        default:assertionFailure("selectedSegmentIndex is invalid.")
            }
    }
}
