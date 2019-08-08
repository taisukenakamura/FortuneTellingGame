//
//  ViewController.swift
//  FortuneTellingGame
//
//  Created by 中村泰輔 on 2019/08/08.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
//    let nowDate = NSDate()
//    let dateFormat = DateFormatter()
//    let inputDatePicker = UIDatePicker()
    
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var resultView: UITextView!
    
    @IBOutlet weak var bloodSegment: UISegmentedControl!
    @IBOutlet weak var setDatePicker: UIDatePicker!
//    スライダーの番号の初期化
    var sliderNumber : Int = 50
//    DatePickerから選択されたデータを取り出し、変数に代入する
    fileprivate func setPickerNumber() -> Int {
//        一旦全てのデータを格納
        let date = setDatePicker.date
//        calandar.componentで取り出す
        let year = setDatePicker.calendar.component(.year, from: date)
        let month = setDatePicker.calendar.component(.month, from: date)
        let day =  setDatePicker.calendar.component(.day, from: date)
//        割った余りを定数に格納
        let num : Int = ((year + month + day) % 4)
//        戻り値として返す
        return num
        
    }
//    スライダーを動く関数
    @IBAction func sliderNumber(_ sender: UISlider) {
//     sender.valueで選んだ数字をInt型にしてていい数に格納
        let sliderNumber : Int = Int(sender.value)
//        そのあと文字型にしてラベルに代入する
        numberLabel.text = String(sliderNumber)
        
    }
    
    
//   それぞれにデータを並列させる
    let numberShow : [String] = [
        "あなたは山に愛されています。\n",
        "あなたは海に愛されています。\n",
        "あなたは川に愛されています。\n",
        "あなたは森に愛されています。\n"
    ]
    
    
    let bloodType : [String] = [
        "属性は「雷」です。\n",
        "属性は「水」です。\n",
        "属性は「風」です。\n",
        "属性は「草」です。\n"
    ]
    
    let sliderMessage: [String] = [
        "努力が報われなかったときは、「自分へのごほうび」とつぶやきながら、ひと口サイズのスイーツを口にして。",
        "探し物を思い浮かべながら、人差し指を7回反時計回りにまわしてみて。",
        "銀製品や銀のアクセサリーをピカピカに磨いてから、バッグに入れたり身につけて。",
        "ふと口をついて出た曲をダウンロードするか、ラジオ番組にリクエストメールを出しましょう。",
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
//    データの個数と余り値の個数が血液型の種類数が同一なため、同じ定数に代入して、戻り値として返す。
//    以下の二つの関数はInt型の引数として使う
    
    func setBloodNumber() -> Int{
        
        let num = bloodSegment.selectedSegmentIndex
        return num
        
    }
    
    func setSliderNumber() -> Int{
        
        let num = (sliderNumber % 4)
        
        return num
    }
//    結果を表すtextViewに結果を代入できるような関数を作って、String型の戻り値として返す
    func settingTextView(setPickerNumber : Int,setBloodNumber : Int,setSliderNumber : Int) -> String{
        return numberShow[setPickerNumber] + bloodType[setBloodNumber] + sliderMessage[setSliderNumber]
    }
    
    
    
    
    
    
    @IBAction func showButton(_ sender: Any) {
//        関数を引数として渡して、textVuewに代入する
        resultView.text = settingTextView(setPickerNumber: setPickerNumber(), setBloodNumber: setBloodNumber(), setSliderNumber: setSliderNumber())
        
    }
}
    
    


