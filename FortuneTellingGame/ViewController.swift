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
    @IBOutlet weak var resultView: UITextView!
    
    
    fileprivate func setPickerNum() -> Int{
        let date = inputDatePicker.date
        
        let year = inputDatePicker.calendar.component(.year, from: date)
        let month = inputDatePicker.calendar.component(.month, from: date)
        let day = inputDatePicker.calendar.component(.day, from: date)
        
        let num = ((year + month + day) % 4)
        
        return num
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
}

    
    @IBAction func sliderNumber(_ sender: UISlider) {
        
        let sliderNumber : Int = Int(sender.value)
        numberLabel.text = String(sliderNumber)

    }
    
    


}
