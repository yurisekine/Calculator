//
//  ViewController.swift
//  Calculator
//
//  Created by SEKINE YURI on 2016/02/07.
//  Copyright © 2016年 SEKINE YURI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var number : Int = 0
    var number1 : Int = 0
    var operation : Int = 0
    
//    var push: BooleanType = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func select0() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 0
        label.text = String(number)
    }
    @IBAction func select1() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 1
        label.text = String(number)
    }
    @IBAction func select2() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 2
        label.text = String(number)
    }
    @IBAction func select3() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 3
        label.text = String(number)
    }
    @IBAction func select4() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 4
        label.text = String(number)
    }
    @IBAction func select5() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 5
        label.text = String(number)
    }
    @IBAction func select6() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 6
        label.text = String(number)
    }
    @IBAction func select7() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 7
        label.text = String(number)
    }
    @IBAction func select8() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 8
        label.text = String(number)
    }
    @IBAction func select9() {
        label.textColor = UIColor.blackColor()
        number = number*10 + 9
        label.text = String(number)
    }
    
    @IBAction func plus() {
        //plusボタンを押したときに、labelが赤色に表示される
        label.textColor = UIColor.redColor()
        label.text = String(number)
        operation = 1
        number1 = number
        number = 0
    }
    @IBAction func minus() {
        label.textColor = UIColor.blueColor()
        label.text = String(number)
        
        operation = 2
        number1 = number
        number = 0
    }
    @IBAction func multi() {
        label.textColor = UIColor.greenColor()
        label.text = String(number)
        
        operation = 3
        number1 = number
        number = 0
    }
    @IBAction func divi() {
        label.textColor = UIColor.orangeColor()
        label.text = String(number)
        
        operation = 4
        number1 = number
        number = 0
    }
    @IBAction func equal() {
//        push = true
        if operation == 1 {
            number = number + number1
            label.text = String(number)
        } else if operation == 2 {
            number = number1 - number
            label.text = String(number)
        } else if operation == 3 {
            number = number1 * number
            label.text = String(number)
        } else if operation == 4 {
            number = number1 / number
            label.text = String(number)
        }
        
    }
    @IBAction func clear() {
        number = 0
        label.text = String(number)
    }
}
