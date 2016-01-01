//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Quyen Mac on 12/30/15.
//  Copyright (c) 2015 Quyen Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercent: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Tip Calculator"

        // default view at start up
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        tipPercent.text = "0%"
        let update = NSUserDefaults.standardUserDefaults()
        update.setBool(false, forKey: "checker_bool")
        update.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // if segment is pressed. test failed
    @IBAction func touchUp(sender: AnyObject) {
        let update = NSUserDefaults.standardUserDefaults()
        update.setBool(false, forKey: "checker_bool")
        update.synchronize()
        
        println("pressed")
    }
    
    // if segment is pressed. test failed
    @IBAction func touchDown(sender: AnyObject) {
        let update = NSUserDefaults.standardUserDefaults()
        update.setBool(false, forKey: "checker_bool")
        update.synchronize()
        
        println("pressed")
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        // array of default values
        var tipPercentages = [0.18, 0.2, 0.22]
        
        // selected default value
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        // get bool
        let update = NSUserDefaults.standardUserDefaults()
        let update2 = update.boolForKey("checker_bool")
        
        // only execute if bool is false
        if !update2 {
            //transfer percentage var from controller to setting
            let percentage = NSUserDefaults.standardUserDefaults()
            percentage.setDouble((tipPercentage), forKey: "current_percentage")
            percentage.synchronize()
            println("test: \(tipControl.selectedSegmentIndex) val: \(tipPercentage)")
        }
        
        // get the tip value
        let percentage = NSUserDefaults.standardUserDefaults()
        let tipValue = percentage.doubleForKey("current_percentage")
        
        // get text field for bill amount
        var billAmount = NSString(string: billField.text!).doubleValue
        
        // get tip and total amount
        var currentTip = tipValue * 100
        var tip = billAmount * tipValue
        var total = billAmount + tip
        
        // display and convert format
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tipPercent.text = "\(currentTip)"
        
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

