//
//  ViewController.swift
//  TIPCalc
//
//  Created by Earth C-137 on 2/4/19.
//  Copyright © 2019 Earth C-137. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
   
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func oTap(_ sender: Any)
    {
       
        view.endEditing(true)
        
    }
    
    
    
    
    
    
    @IBAction func CalTip(_ sender: Any)
        
    {
        let TipPercent = [0.15,0.18,0.20]
        let Bill = Double(BillField.text!) ?? 0
        print(Bill)
        print(TipControl.selectedSegmentIndex)
        let Tip = Bill  *  TipPercent[TipControl.selectedSegmentIndex]
        let Total = Bill + Tip
        
        
        TotalLabel.text = "$\(Total)"
        tipLabel.text = String(format: "$%.2f", Tip)
        TotalLabel.text = String(format: "$%.2f", Total)
        
    }
    
    @IBAction func redo(_ sender: Any) {
        
        CalTip(sender)
    }
    
    
}

