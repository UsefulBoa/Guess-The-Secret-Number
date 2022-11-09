//
//  InterfaceController.swift
//  Guess Watch Edition! Extension
//
//  Created by Yan M on 3/30/21.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController{
    
    var rNubmer: Int = Int((arc4random() % 50) + 1)
    var gNumber: Int = 0
    
    
    @IBOutlet var Number: WKInterfaceLabel!
    @IBOutlet var StatusLabel: WKInterfaceLabel!
    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
    }
    

    
    @IBAction func more() {
        if gNumber > 49 {
            
        }
        else{
       gNumber=gNumber + 1
        Number.setText("\(gNumber)")
        }
    
    }
    @IBAction func less() {
        
        if gNumber < 1 {
            
        }
        else{
       gNumber=gNumber - 1
        Number.setText("\(gNumber)")
        }
    }
    @IBAction func makeguess() {
        if gNumber==rNubmer{
            StatusLabel.setText("You Won!")
            Number.setText("Guess to Play!")
            rNubmer = Int((arc4random() % 50) + 1)
            gNumber = 0
        }
        else if gNumber > rNubmer{
            StatusLabel.setText("Less")
        }
        else if gNumber < rNubmer{
            StatusLabel.setText("More")
        }
        else{
            StatusLabel.setText("ERROR")
        }
    
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}



