//
//  InterfaceController.swift
//  HelloAppleWatch WatchKit App Extension
//
//  Created by IJke Botman on 13/01/2018.
//  Copyright © 2018 Razeware. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var label: WKInterfaceLabel!
    
    override func willActivate() {
        super.willActivate()
        label.setText("Hello, Apple Watch!")
    }
}
