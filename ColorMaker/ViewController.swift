//
//  ViewController.swift
//  ColorMaker
//
//  Created by Anda Stoica on 21/04/2020.
//  Copyright © 2020 Anda Stoica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateColor()
    }

    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redSlider == nil || self.greenSlider == nil || self.blueSlider == nil || self.colorView == nil {
            return
        }
        updateColor()
        
    }
    
    func updateColor() {
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
                
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

}

