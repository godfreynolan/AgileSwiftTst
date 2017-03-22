//
//  ViewController.swift
//  Calculator
//
//  Created by Brian Marshall on 3/20/17.
//  Copyright © 2017 Brian Marshall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var res = Int()
    var num = Int()
    var op = String()

    let resCalc = CalculatorModel()

    @IBOutlet weak var resultsFld: UITextField!

    @IBAction func compute(_ sender: UIButton) {
        num = num * 10 + Int(sender.titleLabel!.text!)!
        resultsFld.text = ("\(num)")
    }

    @IBAction func operation(_ sender: UIButton) {
        switch op {
            case "=":
                res = num
            case "+":
                res = resCalc.add(res, num)
            case "-":
                res = resCalc.sub(res, num)
            case "*":
                res = resCalc.mul(res, num)
            case "/":
                res = resCalc.div(res, num)
            default:
                print("error")
        }

        num = 0
        resultsFld.text = ("\(res)")

        if(sender.titleLabel!.text == "=") {
            res = 0
        }

        op = sender.titleLabel!.text! as String!
    }

    @IBAction func clear(_ sender: UIButton) {
        res = 0
        num = 0
        op = "="
        resultsFld.text = ("\(res)")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        op = "="
        resultsFld.text = ("\(res)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
