//
//  ViewController.swift
//  UserDataPersistence
//
//  Created by Dmitry Shamis on 9/29/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let color = colorManager.retrieveColor()
        ColorChanger.updateUI(self.view, color: color)
        backgroundColor.selectedSegmentIndex = color
        renderUserEmail()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldAutorotate() -> Bool {
        return preferenceManager.shouldRotate()
    }
    
    let colorManager = ColorManager()
    let preferenceManager = PreferenceManager()

    @IBOutlet weak var backgroundColor: UISegmentedControl!
    @IBOutlet weak var emailLabel: UILabel!

    @IBAction func storeBackground(sender: AnyObject) {
        colorManager.saveColor(backgroundColor.selectedSegmentIndex)
    }

    @IBAction func didColorChanged(sender: UISegmentedControl) {
        ColorChanger.updateUI(self.view, color: backgroundColor.selectedSegmentIndex)
    }
    
    func renderUserEmail() {
        emailLabel.text = preferenceManager.returnUserEmail()
    }
}

