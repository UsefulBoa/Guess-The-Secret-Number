//
//  ViewController.swift
//  Guess The Secret Number
//
//  Created by Yan M on 2/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    var rNubmer: Int = Int((arc4random() % 50) + 1)
    var gNumber: Int = 0
    var tries: Int = 0
    
    @IBOutlet var StatusLabel: UILabel!
    @IBOutlet var Number: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func more() {
        if gNumber > 49 {
            
        }
        else{
       gNumber=gNumber + 1
        Number.text = ("\(gNumber)")
        }
    }
    
    @IBAction func less() {
        if gNumber < 1 {
            
        }
        else{
       gNumber=gNumber - 1
        Number.text = ("\(gNumber)")
        }
    }
    @IBAction func makeguess() {
        self.StatusLabel.textColor = .white
        if gNumber==rNubmer{
            StatusLabel.text = ("You Won!")
                self.StatusLabel.textColor = .green
            Number.text = ("Guess to Play!")
            rNubmer = Int((arc4random() % 50) + 1)
        }
        else if gNumber > rNubmer{
            StatusLabel.text = ("Less")
            self.StatusLabel.textColor = .red
            
        }
        else if gNumber < rNubmer{
            StatusLabel.text = ("More")
            self.StatusLabel.textColor = .systemCyan
           
        }
        else{
            StatusLabel.text = ("ERROR")
        }
    }

}


