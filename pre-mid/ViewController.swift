//
//  ViewController.swift
//  pre-mid
//
//  Created by Bank on 3/3/2562 BE.
//  Copyright © 2562 Bank. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    var showTab = ""
    var total = ""
    var symbo = ""
      var count = 0
    @IBOutlet weak var result: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func Click0(){
        showTab += "0"
        result.text = showTab
    }
    @IBAction func Click1(){
        showTab += "1"
        result.text = showTab
    }
    @IBAction func Click2(){
        showTab += "2"
        result.text = showTab
    }
    @IBAction func Click3(){
        showTab += "3"
        result.text = showTab
    }
    @IBAction func Click4(){
        showTab += "4"
        result.text = showTab
    }
    @IBAction func Click5(){
        showTab += "5"
        result.text = showTab
    }
    @IBAction func Click6(){
        showTab += "6"
        result.text = showTab
    }
    @IBAction func Click7(){
        showTab += "7"
        result.text = showTab
    }
    @IBAction func Click8(){
        showTab += "8"
        result.text = showTab
    }
    @IBAction func Click9(){
        showTab += "9"
        result.text = showTab
    }
    @IBAction func ClickMod(){
        symbo = "%"
        total = result.text!
        result.text = symbo
        showTab = ""
    }
    @IBAction func ClickDot(){
        
        if(!showTab.contains(".")){
            showTab += "."
        }
        
    }
    @IBAction func del(_ sender: Any) {
        showTab.removeLast()
        result.text = showTab
    }
    @IBAction func ClickResult(){
        var all = 0.0
        var countIndex = 0
        var countZero = 1
        print(symbo)
        if(symbo=="+"){
            all = Double(total)! + Double(showTab)!
            
            for(index,element) in String(all).enumerated(){
                if(element == "."){
                    for _ in index..<String(all).count{
                        countIndex += 1
                    }
                }
            }
            for(_,element) in String(all).suffix(countIndex).enumerated(){
                if(element == "0"){
                    countZero+=1
                }
            }
            if(countZero==countIndex){
                count = 0
                result.text = String(format: "%.0f", all)
            }else{
                 count = 0
                result.text = String(all)
            }
        }
        if(symbo=="-"){
            all = Double(total)! - Double(showTab)!
            if(String(all).contains(".0")){
                result.text = String(format: "%.0f", all)
            }
            else{
                result.text = String(all)
            }
            
        }
        if(symbo=="X"){
            all = Double(total)! * Double(showTab)!
            if(String(all).contains(".0")){
                result.text = String(format: "%.0f", all)
            }else{
                result.text = String(all)
            }
            
        }
        if(symbo=="/"&&showTab != "0"){
            all = Double(total)! / Double(showTab)!
            if(String(all).contains(".0")){
                result.text = String(format: "%.0f", all)
            }else{
                result.text = String(all)
            }
            
        }
        if(symbo=="%"){
            var all1  = 0.0
            (all1) = fmod(Double(total)!, Double(showTab)!)
            if(String(all).contains(".0")){
                result.text = String(format: "%.0f", all1)
            }else{
                result.text = String(all1)
            }
            
        }
    }
    @IBAction func ClickPlus(){
        if(count == 0){
            symbo = "+"
            total = result.text!
            result.text = symbo
            showTab = ""
        }
        count += 1
      
    }
    @IBAction func ClickMinus(){
        symbo = "-"
        total = result.text!
        result.text = symbo
        showTab = ""
        
    }
    @IBAction func ClickDevice(){
        symbo = "/"
        total = result.text!
        result.text = symbo
        showTab = ""
        
    }
    @IBAction func ClickMultiply(_ sender: Any) {
        symbo = "X"
        total = result.text!
        result.text = symbo
        showTab = ""
        
    }
    @IBAction func ClickClear(){
        count = 0
        showTab = ""
        symbo = ""
        result.text = "0"
        
    }
}

