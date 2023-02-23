//
//  ViewController.swift
//  Tally App
//
//  Created by Paige Stephenson on 2/23/23.
//


// Instructions:
//Create an app that allows the user to tap a button that makes a counter go up.
//There will be two parts to the screen.
//The top part the user can determine what the interval of the counter is(by 1, 2, 3, ....).
//The bottom part will be the counter. The counter should behave how the user specified at the top of the screen.
//Be creative with your design of the app! Personalize so it is your own. Add colors, fonts, pictures, etc.
//Use constraints!


//        So I'm thinking that there needs to be a variable that is added to each time the button is pressed and the countDisplay label then displays that variable.


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFieldCount: UITextField!
    @IBOutlet weak var countDisplay: UILabel!
    
    @IBOutlet weak var addToCount: UIButton!
    
    var currentCount: Int = 0
    var countInterval: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func intervalEntry(_ sender: Any) {
        if let text = textFieldCount.text {
            countInterval = Int(text) ?? 1
            textFieldCount.endEditing(false)
        }
    }
    
    
    @IBAction func addToCountButtonPressed(_ sender: Any) {
        currentCount += countInterval
        countDisplay.text = String(currentCount)
    }
    

}

