//
//  ViewController.swift
//  FortuneTellingGame
//
//  Created by 中村泰輔 on 2019/08/08.
//  Copyright © 2019 icannot.t.n. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    //それぞれ変数として扱えるように定義しておく
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var resultView: UITextView!
    
    @IBOutlet weak var bloodSegment: UISegmentedControl!
    @IBOutlet weak var setDatePicker: UIDatePicker!
    
    // それぞれにデータを並列させる
    let pickerShow : [String] = [
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
    
    // スライダーの番号の初期化
    var sliderN : Int = 50
    // DatePickerから選択されたデータを取り出し、変数に代入する
    func setPickerNumber() -> Int {
        // 一旦全てのデータを格納
        let date = setDatePicker.date
        // calandar.componentで取り出す
        let year = setDatePicker.calendar.component(.year, from: date)
        let month = setDatePicker.calendar.component(.month, from: date)
        let day =  setDatePicker.calendar.component(.day, from: date)
        // 割った余りを定数に格納
        let num : Int = ((year + month + day) % 4)
        // 戻り値として返す
        return num
       
    }
    // スライダーを動く関数
    @IBAction func sliderNumber(_ sender: UISlider) {
        //スライダーで送られてくる値を整数として受け取る
        sliderN = Int(sender.value)
        // 文字型にしてラベルに代入する,整数で受け取る
        numberLabel.text = String(sliderN)
        
    }
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    
    // データの個数と余り値の個数が血液型の種類数が同一なため、同じ定数に代入して、戻り値として返す。
    // 以下の二つの関数はInt型の戻り値を持つ関数として使う
    
    func setBloodNumber() -> Int {
        // セグメントで選ばれたものを数値として受け取る
        let num = bloodSegment.selectedSegmentIndex
        // 戻り値
        return num
        
    }
    
    func setSliderNumber() -> Int {
        
        // スライダーで選ばれた数字を4で割って、余りの0,1,2,3を代入する
        let num = (sliderN % 4)
        // 戻り値
        return num
    }

    // ボタンを押した時の挙動
    @IBAction func showButton(_ sender: Any) {
        // 関数を引数として渡して、textViewに代入する
       resultView.text = pickerShow[setPickerNumber()] + bloodType[setBloodNumber()] + sliderMessage[setSliderNumber()]
    }
}

    


