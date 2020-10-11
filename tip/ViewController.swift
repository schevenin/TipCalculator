//
//  ViewController.swift
//  tip
//
//  Created by Leo on 10/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var peopleStepper: UIStepper!
    @IBOutlet weak var tipAmountSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {

    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = ceil(Double(tipAmountSlider.value*100))
        let tip = (bill * tipPercentage/100)
        let people = peopleStepper.value
        let total = (bill + tip) / people


        if (billAmountTextField.text == "") {
            tipPercentageLabel.text = String("\(Int(tipPercentage))% for a $0.00 tip")
            peopleLabel.text = String(Int(people))
            totalLabel.text = "$0.00 per person"
        } else {
            tipPercentageLabel.text = "\(Int(tipPercentage))% for a $\(String(format: "%.2f", ceil(tip*100)/100)) tip"
            peopleLabel.text = String(Int(people))
            totalLabel.text = String(format: "$%.2f per person", total)
        }

    }
}

