//
//  ViewController.swift
//  TextGradation
//
//  Created by pikachu987 on 12/01/2018.
//  Copyright (c) 2018 pikachu987. All rights reserved.
//

import UIKit
import TextGradation

class ViewController: UIViewController {

    @IBOutlet weak var gradationLabel: UILabel!
    @IBOutlet weak var gradationButton: UIButton!
    
    @IBOutlet weak var gradationProgressHorizontalLabel: UILabel!
    @IBOutlet weak var gradationProgressVerticalLabel: UILabel!
    @IBOutlet weak var gradationProgressHorizontalButton: UIButton!
    @IBOutlet weak var gradationProgressVerticalButton: UIButton!
    
    @IBOutlet weak var gradationProgressLabel: GradationLabel!
    @IBOutlet weak var gradationProgressButton: GradationButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.gradationLabel.gradation(.horizontal, colors: [UIColor.gray, UIColor.red, UIColor.blue, UIColor.black])
        self.gradationButton.gradation(.horizontal, colors: [UIColor.gray, UIColor.red, UIColor.blue, UIColor.black])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction private func sliderValueChanged(_ sender: UISlider) {
        self.gradationProgressHorizontalLabel.gradation(.horizontal, startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), endColor: .black, progress: CGFloat(sender.value))
        
        self.gradationProgressVerticalLabel.gradation(.vertical, startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), endColor: .black, progress: CGFloat(sender.value))
        
        self.gradationProgressHorizontalButton.gradation(.horizontal, startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), endColor: .black, progress: CGFloat(sender.value))
        
        self.gradationProgressVerticalButton.gradation(.vertical, startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), endColor: .black, progress: CGFloat(sender.value))
        
        self.gradationProgressLabel.progress = CGFloat(sender.value)
        
        self.gradationProgressButton.progress = CGFloat(sender.value)
    }
    
}

