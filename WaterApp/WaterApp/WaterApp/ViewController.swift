//
//  ViewController.swift
//  WaterApp
//
//  Created by Admin on 10/10/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var countL = 0
    var history = [Int]()
 
    
    @IBOutlet weak var AllCountLit: UILabel!
      
    @IBOutlet weak var CountLit: UITextField!
    
    @IBOutlet weak var HistortText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateHistory()
    }
    
    func UpdateHistory(){
        self.AllCountLit.text = "\(countL)"+"л";
        HistortText.text = ""
       for item in history {
            HistortText.text = HistortText.text + "\(item)"+"l выпито"+"\r"
        }
        
    }

  
    @IBAction func but_delete_last(_ sender: Any) {
        if (history.count > 0) {
            countL = countL - history.last!
            history.removeLast()
            UpdateHistory()
        }
        
            
    }
    @IBAction func Button_change(_ sender: UIButton) {
        let a = Int(CountLit.text!)!
        if (a == 0){return}
        history.append(a)
        countL = countL+a
        UpdateHistory()
        
    }
    
}

