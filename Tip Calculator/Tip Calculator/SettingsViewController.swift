//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Quyen Mac on 12/31/15.
//  Copyright (c) 2015 Quyen Mac. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var customLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let percentage = NSUserDefaults.standardUserDefaults()
        let tipVal = percentage.doubleForKey("current_percentage")
        var tip = tipVal * 100
        customLabel.text = "\(Int(tip))"
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onEdit(sender: AnyObject) {
        //let percentage = NSUserDefaults.standardUserDefaults()
        //let tipVal = percentage.doubleForKey("current_percentage")
        //var sTip = String(Int(tipVal))
        
        var temp = NSString(string: customLabel.text!).doubleValue
        var custom = temp * 0.01
        
        let percentage = NSUserDefaults.standardUserDefaults()
        percentage.setDouble((custom), forKey: "current_percentage")
        percentage.synchronize()
        
        let update = NSUserDefaults.standardUserDefaults()
        update.setBool(true, forKey: "checker_bool")
        update.synchronize()
        
        //var custom1 = tipVal * 0.01
        
        //if tipVal == temp {
            //let defaults = NSUserDefaults.standardUserDefaults()
            //defaults.setDouble((custom1), forKey: "default_tip_percentage")
          //  defaults.synchronize()
        //}
        //else {
            //let defaults = NSUserDefaults.standardUserDefaults()
            //defaults.setDouble((custom), forKey: "default_tip_percentage")
          //  defaults.synchronize()
        //}
        
       //println("custom: \(custom)")
        //println("custom1: \(custom1)")
        //println("custom: \(custom)")
        //var checker = true
        
        
    }
    
    
    @IBAction func onTapSetting(sender: AnyObject) {
        view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
