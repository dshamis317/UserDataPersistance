//
//  PreferenceManager.swift
//  UserDataPersistence
//
//  Created by Dmitry Shamis on 9/29/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class PreferenceManager: NSObject {

    let defaults = NSUserDefaults.standardUserDefaults()
    
    func shouldRotate() -> Bool {
        var value = true
        
        if let rotation = defaults.valueForKey("userRotation") {
            value = (rotation as? Bool)!
        }
        
        return value
    }
    
    func returnUserEmail() -> String {
        var value = ""
        
        if let userEmail = defaults.valueForKey("userEmail") {
            value = (userEmail as? String)!
        }
        
        return value
        
    }

}
