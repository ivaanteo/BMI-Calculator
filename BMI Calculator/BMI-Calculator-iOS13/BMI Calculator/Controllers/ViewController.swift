//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBAction func heightSliderMoved(_ sender: UISlider) {
        heightLabel.text=String(Float(Int(sender.value*100))/100) + "m"
    }
    @IBAction func weightSliderMoved(_ sender: UISlider) {
        weightLabel.text=String(Int(sender.value)) + "Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        var BMI = weight / (height * height)
        let secondVC = SecondViewController()
        secondVC.bmiValue=BMI
        self.present(secondVC, animated: true, completion: nil)
        
    }
    

}

