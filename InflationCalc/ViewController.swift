//
//  ViewController.swift
//  InflationCalc
//
//  Created by Steve Tointon on 2/8/20.
//  Copyright © 2020 Steve Tointon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //properties
    
    @IBOutlet weak var dollarTextFeild: UITextField!
    @IBOutlet weak var yearTextFeild: UITextField!
    @IBOutlet weak var valueTodayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //actions
    
    @IBAction func computeAction(_ sender: Any) {
        
        let dollars = Double(dollarTextFeild.text!)
        let initialYear = Double(yearTextFeild.text!)
        let totalYears = Double(2020)
        
        let difference = Double(totalYears-initialYear!)
        let percentage = Double(1.0324)
        
        
        if (dollars != nil) && (initialYear != nil){
            let valueToday = Double(dollars!*(percentage*difference))
            valueTodayLabel.text = "Value today:\(valueToday)"
        }else
        {
            valueTodayLabel.text = "please enter valid number"
        }
        
        
    }
    
    
    

}

