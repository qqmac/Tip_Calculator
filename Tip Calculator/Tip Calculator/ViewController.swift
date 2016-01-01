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
    
    @IBAction func touchUp(sender: AnyObject) {
        let update = NSUserDefaults.standardUserDefaults()
        update.setBool(false, forKey: "checker_bool")
        update.synchronize()
        
        println("pressed")
    }
    

    @IBAction func touchDown(sender: AnyObject) {
        let update = NSUserDefaults.standardUserDefaults()
        update.setBool(false, forKey: "checker_bool")
        update.synchronize()
        
        println("pressed")
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        
        
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        
        
        
        
        let update = NSUserDefaults.standardUserDefaults()
        let update2 = update.boolForKey("checker_bool")
        
        
        
        if !update2 {
            //transfer percentage var from controller to setting
            let percentage = NSUserDefaults.standardUserDefaults()
            percentage.setDouble((tipPercentage), forKey: "current_percentage")
            percentage.synchronize()
            println("test: \(tipControl.selectedSegmentIndex) val: \(tipPercentage)")
        }
        //var temp1 = tipPercentage
        //var tipp = tipPercentage * 100
        
        let percentage = NSUserDefaults.standardUserDefaults()
        let tipValue = percentage.doubleForKey("current_percentage")
        
        var currentTip = tipValue * 100
        var billAmount = NSString(string: billField.text!).doubleValue
        
        
        // get the changed percentage value
        
        
        //var tipPe = tipPercentages[tipControl.selectedSegmentIndex]
        
        
       
    
        var tip = billAmount * tipValue
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tipPercent.text = "\(currentTip)"
        
        //let update = NSUserDefaults.standardUserDefaults()
        //update.setBool(false, forKey: "checker_bool")
        //update.synchronize()
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

