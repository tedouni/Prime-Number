//
//  ViewController.swift
//  Prime Number
//
//  Created by Tayseer Edouni on 6/14/15.
//  Copyright (c) 2015 Tayseer Edouni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enteredNumber: UITextField!
    
    @IBOutlet weak var displayResult: UILabel!
    
    
    @IBAction func getResult(sender: AnyObject) {
        
        var userNumber = enteredNumber.text.toInt()
        
        if(userNumber == nil){
            displayResult.text = "Please enter a number!"
        }
        else{
            
            if(userNumber < 0){
                displayResult.text = "Please enter a positive integer!"
            }
            
            else{
                
                var isPrimeNumber : Bool
                //check if prime number
                isPrimeNumber = is_Prime(userNumber!)
                
                if (isPrimeNumber == true){
                    displayResult.text = "You entered a prime number!"
                }
                else{
                    displayResult.text = "You did not enter a prime number!"
                }

            }
            
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

