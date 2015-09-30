//
//  ColorManager.swift
//  UserDataPersistence
//
//  Created by Dmitry Shamis on 9/29/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class ColorManager: NSObject {

    let defaults = NSUserDefaults.standardUserDefaults()

    
    func saveColor(colorSelection:Int) {
        defaults.setInteger(colorSelection, forKey: "userColor")
    }
    
    func retrieveColor() -> Int {
        var value = 0

        if let color = defaults.valueForKey("userColor") {
            value = color as! Int
        }
        
        return value
    }

}
