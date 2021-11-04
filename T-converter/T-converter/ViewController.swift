//
//  ViewController.swift
//  T-converter
//
//  Created by Сабитов Данил on 24.09.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabelOutlet: UILabel!
    @IBOutlet weak var cTempOutlet: UILabel!
    @IBOutlet weak var fTempOutlet: UILabel!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliderOutlet.value = 0
        sliderOutlet.thumbTintColor = .red
       
        
        if sliderOutlet.minimumValue == 0 {
            cTempOutlet.text = "move"
            fTempOutlet.text = "thumb"
        }
        
     
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        sliderOutlet.minimumValue = 1
        sliderOutlet.maximumValue = 1000
        
        
        cTempOutlet.text = "\(Int(sliderOutlet.value)) ºC"
        fTempOutlet.text = "\(Int(sliderOutlet.value * 1.8 + 32)) ºF"
       
    }
}
