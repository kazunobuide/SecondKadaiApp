//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 井手　和宣 on 2020/12/17.
//  Copyright © 2020 kazunobu.ide. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TextField
    @IBOutlet weak var textField: UITextField!
    
    // 文字列保存用の変数
    var textFieldString = ""

     override func viewDidLoad() {
         super.viewDidLoad()

     }
    
    // ボタン押下時のアクション
    @IBAction func pushButton(_ sender: Any) {
    
    
            
        // TextFieldから文字を取得
        textFieldString = textField.text!
              
     }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
          let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているx, yに値を代入して渡す
        resultViewController.textFieldString = self.textField.text!

    }
    
    
    
    @IBAction func unwind(_ seque: UIStoryboardSegue){
    }
}
