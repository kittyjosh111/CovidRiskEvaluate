//
//  ViewController.swift
//  CoronaGame
//
//  Created by Joshua Shi on 6/13/20.
//  Copyright © 2020 Joshua Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
@IBOutlet weak var riskLabel:UILabel?
    @IBOutlet weak var butt1:UIButton?
    
    let buttonImageNotClicked = UIImage(named: "number")
    let buttonImageClicked = UIImage(named: "numberBLUE")
    var risk = 0
    var but1Clicked = false
    
    func updateriskLabel() {
    riskLabel?.text = String(risk)
    }
    
    @IBAction func but1()
    {
        let newRisk = but1Clicked ? -9 : 9
        self.risk += newRisk
        let newImage = but1Clicked ? buttonImageNotClicked : buttonImageClicked
        butt1?.setImage(newImage, for: .normal)
        self.but1Clicked = !self.but1Clicked
        self.updateriskLabel()
    }
    
    @IBAction func but2()
    {
        self.risk += 8
        self.updateriskLabel()
    }
    
    @IBAction func but3()
    {
        self.risk += 3
        self.updateriskLabel()
    }
    
    @IBAction func but4()
    {
        self.risk += 5
        self.updateriskLabel()
    }
     @IBAction func but5()
     {
        self.risk += 6
        self.updateriskLabel()
     }
     
     @IBAction func but6()
     {
        self.risk += 5
        self.updateriskLabel()
     }
     
     @IBAction func but7()
     {
        self.risk += 3
        self.updateriskLabel()
     }
     
     @IBAction func but8()
     {
        self.risk += 6
        self.updateriskLabel()
     }
      @IBAction func but9()
      {
        self.risk += 6
        self.updateriskLabel()
      }
      
      @IBAction func but10()
      {
        self.risk += 8
        self.updateriskLabel()
      }
      
      @IBAction func but11()
      {
        self.risk += 5
        self.updateriskLabel()
      }
      
      @IBAction func but12()
      {
        self.risk += 3
        self.updateriskLabel()
      }
      
    @IBAction func reset()
         {
           self.risk = 0
           self.updateriskLabel()
            self.butt1?.setImage(buttonImageNotClicked, for: .normal)
         }
          
    override func viewDidLoad() {
        super.viewDidLoad()
        updateriskLabel()
    }


}

