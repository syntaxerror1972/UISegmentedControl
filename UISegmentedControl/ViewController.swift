//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Shrawan Shinde on 21/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var selectedValue = UILabel()
    var segmentedControlView = UISegmentedControl()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        selectedValue.frame = CGRect(x: 100, y: 200, width: 200, height: 20)
        view.addSubview(selectedValue)
        selectedValue.text = "selected control : one"

        segmentedControlView = UISegmentedControl (items: ["one","two","three"])
        segmentedControlView.frame = CGRect(x: 60, y: 250, width: 200, height: 30)
        segmentedControlView.selectedSegmentIndex = 0
        segmentedControlView.tintColor = UIColor.blue
        segmentedControlView.addTarget(self, action: #selector(segmentedValueChanged), for: .valueChanged)
        self.view.addSubview(segmentedControlView)
        
    }
    
    func segmentedValueChanged(sender:UISegmentedControl!)
    {
        switch sender.selectedSegmentIndex
        {
        case 0:
            selectedValue.text = "selected control : one"
        case 1:
            selectedValue.text = "selected control : two"
        case 2:
            selectedValue.text = "selected control : three"
            
        default:
            break;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

