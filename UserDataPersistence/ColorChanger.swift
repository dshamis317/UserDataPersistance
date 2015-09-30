//
//  ColorChanger.swift
//  UserDataPersistence
//
//  Created by Dmitry Shamis on 9/29/15.
//  Copyright © 2015 Dmitry Shamis. All rights reserved.
//

import UIKit

class ColorChanger: NSObject {
    
    static func updateUI(view:UIView, color:Int) {
        switch color {
        case 0:
            view.backgroundColor = UIColor.redColor()
            break
        case 1:
            view.backgroundColor = UIColor.blueColor()
            break
        case 2:
            view.backgroundColor = UIColor.greenColor()
            break
        default:
            view.backgroundColor = UIColor.whiteColor()
            break
        }
    }

}
