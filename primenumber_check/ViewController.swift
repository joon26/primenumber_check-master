//
//  ViewController.swift
//  primenumber_check
//
//  Created by D7703_26 on 2018. 3. 29..
//  Copyright © 2018년 dit.ac.kr. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var txt: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        txt.delegate = self
        txt.placeholder = "숫자를 입력하세요."

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func reset(_ sender: Any) {
        txt.text = ""
        lbl.text = ""
    }
 
    @IBAction func bt(_ sender: Any) {
        let number = Int(txt.text!)
        var isPrime = true
        
        if number == 1{
            isPrime = false
            
        }
        
        if number != 1 && number != 2{
            for i in 2..<(number!) {
                if (number!) % i == 0{
                    isPrime = false
                }
            }
        }
        if isPrime == true{
            lbl.text = ("소수입니다.")
        }else{
            lbl.text = ("소수가 아닙니다.")
        }
        txt.resignFirstResponder()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txt.resignFirstResponder()
        return true
    }
}

