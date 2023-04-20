//
//  ViewController.swift
//  AppCounter
//
//  Created by Iurii on 20.04.23.
//

import UIKit

class ViewController: UIViewController {

    var a: Int = 0
    var formatter = DateFormatter()

    @IBOutlet weak var history: UITextView!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var count: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count.text = String(a)
        formatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        history.isEditable = false

        // Do any additional setup after loading the view.
    }

    @IBAction func tapButtonPlus(_ sender: Any) {
        a += 1
        count.text = "Значение счётчика: \(a)"
        history.text = String(history.text + "\n[" + formatter.string(from: Date.now) + "] значение изменено на +1")
        
    }
    @IBAction func tapButtonMinus(_ sender: Any) {
        if a != 0 {
            a -= 1
            count.text = "Значение счётчика: \(a)"
            history.text = String(history.text + "\n[" + formatter.string(from: Date.now) + "] значение изменено на -1")
        } else {
            history.text = String(history.text + "\n[" + formatter.string(from: Date.now) + "] попытка уменьшить значение счётчика ниже 0")
        }
        
    }
    @IBAction func tapButtonReset(_ sender: Any) {
        a = 0
        count.text = "Значение счётчика: \(a)"
        history.text = String(history.text + "\n[" + formatter.string(from: Date.now) + "] значение сброшено")
    }
    
    
}

