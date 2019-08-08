//
//  ViewController.swift
//  FortuneTellingGame
//
//  Created by 中村泰輔 on 2019/08/08.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit



class ViewController: UIViewController{
    
    
    let nowDate = NSDate()
    let dateFormat = DateFormatter()
    let inputDatePicker = UIDatePicker()

    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //日付フィールドの設定
       
    }
    
    
    @IBAction func sliderNumber(_ sender: UISlider) {
        
        let slidernumber : Int = Int(sender.value)
        numberLabel.text = String(slidernumber)
        
    }
    

}

