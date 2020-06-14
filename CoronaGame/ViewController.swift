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
    @IBOutlet weak var butt2:UIButton?
    @IBOutlet weak var butt3:UIButton?
    @IBOutlet weak var butt4:UIButton?
    @IBOutlet weak var butt5:UIButton?
    @IBOutlet weak var butt6:UIButton?
    @IBOutlet weak var butt7:UIButton?
    @IBOutlet weak var butt8:UIButton?
    @IBOutlet weak var butt9:UIButton?
    @IBOutlet weak var butt10:UIButton?
    @IBOutlet weak var butt11:UIButton?
    @IBOutlet weak var butt12:UIButton?
    @IBOutlet weak var emoji:UIButton?
    
    var risk = 0
    
    var but1Clicked = false
    var but2Clicked = false
    var but3Clicked = false
    var but4Clicked = false
    var but5Clicked = false
    var but6Clicked = false
    var but7Clicked = false
    var but8Clicked = false
    var but9Clicked = false
    var but10Clicked = false
    var but11Clicked = false
    var but12Clicked = false
    
    var shakeAlertInDisplay = false
    
    let but1ImageNotClicked = UIImage(named: "But1")
    let but1ImageClicked = UIImage(named: "But1Click")
    let but2ImageNotClicked = UIImage(named: "But2")
    let but2ImageClicked = UIImage(named: "But2Click")
    let but3ImageNotClicked = UIImage(named: "But3")
    let but3ImageClicked = UIImage(named: "But3Click")
    let but4ImageNotClicked = UIImage(named: "But4")
    let but4ImageClicked = UIImage(named: "But4Click")
    let but5ImageNotClicked = UIImage(named: "But5")
    let but5ImageClicked = UIImage(named: "But5Click")
    let but6ImageNotClicked = UIImage(named: "But6")
    let but6ImageClicked = UIImage(named: "But6Click")
    let but7ImageNotClicked = UIImage(named: "But7")
    let but7ImageClicked = UIImage(named: "But7Click")
    let but8ImageNotClicked = UIImage(named: "But8")
    let but8ImageClicked = UIImage(named: "But8Click")
    let but9ImageNotClicked = UIImage(named: "But9")
    let but9ImageClicked = UIImage(named: "But9Click")
    let but10ImageNotClicked = UIImage(named: "But10")
    let but10ImageClicked = UIImage(named: "But10Click")
    let but11ImageNotClicked = UIImage(named: "But11")
    let but11ImageClicked = UIImage(named: "But11Click")
    let but12ImageNotClicked = UIImage(named: "But12")
    let but12ImageClicked = UIImage(named: "But12Click")
    
    let lowEmoji = UIImage(named: "low")
    let medEmoji = UIImage(named: "med")
    let highEmoji = UIImage(named: "high")
    
    func updateriskLabel() {
        if risk < 0 {
                   risk = 0
        }
        riskLabel?.text = String(risk)
        if risk <= 10 {
            // low
            updateEmoji(emojiImage: lowEmoji!)
        } else if risk >= 11 && risk <= 30 {
            // medium
            updateEmoji(emojiImage: medEmoji!)
        } else {
            // high
            updateEmoji(emojiImage: highEmoji!)
        }
    }
    
    func updateEmoji(emojiImage: UIImage) {
        // TODO update image
        emoji?.setImage(emojiImage, for: .normal)
    }
    
    func commonButtonClicked(button: UIButton, risk: Int, buttonClicked: inout Bool, imageNotClicked: UIImage, imageClicked: UIImage) {
        let newRisk = buttonClicked ? -1 * risk : risk
        self.risk += newRisk
        let newImage = buttonClicked ? imageNotClicked : imageClicked
        button.setImage(newImage, for: .normal)
        buttonClicked = !buttonClicked
        self.updateriskLabel()
    }
    
    @IBAction func but1()
    {
        commonButtonClicked(button: butt1!,
                            risk: 9,
                            buttonClicked: &self.but1Clicked,
                            imageNotClicked: but1ImageNotClicked!,
                            imageClicked: but1ImageClicked!)
        /*
         let newRisk = but1Clicked ? -9 : 9
         self.risk += newRisk
         let newImage = but1Clicked ? buttonImageNotClicked : buttonImageClicked
         butt1?.setImage(newImage, for: .normal)
         self.but1Clicked = !self.but1Clicked
         self.updateriskLabel()
         */
    }
    
    @IBAction func but2()
    {
        commonButtonClicked(button: butt2!,
                            risk: 8,
                            buttonClicked: &self.but2Clicked,
                            imageNotClicked: but2ImageNotClicked!,
                            imageClicked: but2ImageClicked!)
    }
    
    @IBAction func but3()
    {
        commonButtonClicked(button: butt3!,
                            risk: 3,
                            buttonClicked: &self.but3Clicked,
                            imageNotClicked: but3ImageNotClicked!,
                            imageClicked: but3ImageClicked!)
    }
    
    @IBAction func but4()
    {
        commonButtonClicked(button: butt4!,
                            risk: 5,
                            buttonClicked: &self.but4Clicked,
                            imageNotClicked: but4ImageNotClicked!,
                            imageClicked: but4ImageClicked!)
    }
    
    @IBAction func but5()
    {
        commonButtonClicked(button: butt5!,
                            risk: 6,
                            buttonClicked: &self.but5Clicked,
                            imageNotClicked: but5ImageNotClicked!,
                            imageClicked: but5ImageClicked!)
    }
    
    @IBAction func but6()
    {
        commonButtonClicked(button: butt6!,
                            risk: 5,
                            buttonClicked: &self.but6Clicked,
                            imageNotClicked: but6ImageNotClicked!,
                            imageClicked: but6ImageClicked!)
    }
    
    @IBAction func but7()
    {
        commonButtonClicked(button: butt7!,
                            risk: 3,
                            buttonClicked: &self.but7Clicked,
                            imageNotClicked: but7ImageNotClicked!,
                            imageClicked: but7ImageClicked!)
    }
    
    @IBAction func but8()
    {
        commonButtonClicked(button: butt8!,
                            risk: 6,
                            buttonClicked: &self.but8Clicked,
                            imageNotClicked: but8ImageNotClicked!,
                            imageClicked: but8ImageClicked!)
    }
    @IBAction func but9()
    {
        commonButtonClicked(button: butt9!,
                            risk: 6,
                            buttonClicked: &self.but9Clicked,
                            imageNotClicked: but9ImageNotClicked!,
                            imageClicked: but9ImageClicked!)
    }
    
    @IBAction func but10()
    {
        commonButtonClicked(button: butt10!,
                            risk: 8,
                            buttonClicked: &self.but10Clicked,
                            imageNotClicked: but10ImageNotClicked!,
                            imageClicked: but10ImageClicked!)
    }
    
    @IBAction func but11()
    {
        commonButtonClicked(button: butt11!,
                            risk: 5,
                            buttonClicked: &self.but11Clicked,
                            imageNotClicked: but11ImageNotClicked!,
                            imageClicked: but11ImageClicked!)
    }
    
    @IBAction func but12()
    {
        commonButtonClicked(button: butt12!,
                            risk: 3,
                            buttonClicked: &self.but12Clicked,
                            imageNotClicked: but12ImageNotClicked!,
                            imageClicked: but12ImageClicked!)
    }
    
    @IBAction func emojiClicked()
    {
        var action = ""
        if risk <= 10 {
             // low
             action = "Awesome!"
         } else if risk >= 11 && risk <= 30 {
             // medium
             action = "A bit high. You will probably get COVID"
         } else {
             // high
            action = "You will definitely get COVID. Go to less places."
         }
        
        
        let alert = UIAlertController(title: "Risk:",
                                      message: "Your risk level is \(risk). \n\(action) \n To simulate washing your hands, shake the device!",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            self.shakeAlertInDisplay = false
        }))
        self.present(alert, animated: true, completion: nil)
        shakeAlertInDisplay = true
    }
    
    @IBAction func CDCbutton()
    {
        guard let url = URL(string: "https://www.cdc.gov/coronavirus/2019-ncov/") else { return }
        UIApplication.shared.open(url)
    }
    
    @IBAction func reset()
    {
        self.risk = 0
        self.updateriskLabel()
        self.but1Clicked = false
        self.but2Clicked = false
        self.but3Clicked = false
        self.but4Clicked = false
        self.but5Clicked = false
        self.but6Clicked = false
        self.but7Clicked = false
        self.but8Clicked = false
        self.but9Clicked = false
        self.but10Clicked = false
        self.but11Clicked = false
        self.but12Clicked = false
        self.butt1?.setImage(but1ImageNotClicked, for: .normal)
        self.butt2?.setImage(but2ImageNotClicked, for: .normal)
        self.butt3?.setImage(but3ImageNotClicked, for: .normal)
        self.butt4?.setImage(but4ImageNotClicked, for: .normal)
        self.butt5?.setImage(but5ImageNotClicked, for: .normal)
        self.butt6?.setImage(but6ImageNotClicked, for: .normal)
        self.butt7?.setImage(but7ImageNotClicked, for: .normal)
        self.butt8?.setImage(but8ImageNotClicked, for: .normal)
        self.butt9?.setImage(but9ImageNotClicked, for: .normal)
        self.butt10?.setImage(but10ImageNotClicked, for: .normal)
        self.butt11?.setImage(but11ImageNotClicked, for: .normal)
        self.butt12?.setImage(but12ImageNotClicked, for: .normal)
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        if motion == .motionShake {
            if risk > 0 && !shakeAlertInDisplay {
                self.risk -= 1
                updateriskLabel()
                let alert = UIAlertController(title: "Great Job!", message: "You simulated washing your hands! \n Your risk level is now \(risk).", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Great!", style: .default, handler: { action in
                    self.shakeAlertInDisplay = false
                }))

                self.present(alert, animated: true, completion: nil)
                shakeAlertInDisplay = true
            }
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let alert = UIAlertController(title: "Instructions:", message: "Choose where you want to go today! \n Shake the device to simulate washing your hands!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK, Start game", style: .default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateriskLabel()

    }
    
    
}

