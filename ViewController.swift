//
//  ViewController.swift
//  piyush_project
//
//  Created by Student on 11/09/23.
//  Copyright © 2023 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var slider1: UISlider!
    @IBOutlet weak var t1: UITextField!
    @IBAction func sl1(_ sender: Any) {
        var s = Float(slider1.value)
            t1.text = String(s)
    }
    
    @IBAction func b1(_ sender: Any) {
        var colors : [UIColor] = [UIColor.red,
            UIColor.black,UIColor.blue,UIColor.green
        ]
        
        var okhandler = {
            (Action : UIAlertAction)-> Void in
            print("Hello")
            self.view.backgroundColor = colors.randomElement()
        }
        var alert1 = UIAlertController(title: "Warning", message: "Are you sure?", preferredStyle: .alert)
        alert1.addAction(UIAlertAction(title: "Ok", style: .default, handler: okhandler))
        alert1.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert1, animated: true, completion: nil)
    }
    
    
    
}

