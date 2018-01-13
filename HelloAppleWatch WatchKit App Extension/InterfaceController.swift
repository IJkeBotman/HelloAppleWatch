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

    let emoji = EmojiData()
    @IBOutlet var button: WKInterfaceButton!
    
    fileprivate func showFortune() {
        let people = emoji.people[emoji.people.count.random()]
        let nature = emoji.nature[emoji.nature.count.random()]
        let objects = emoji.objects[emoji.objects.count.random()]
        let places = emoji.places[emoji.places.count.random()]
        let symbols = emoji.symbols[emoji.symbols.count.random()]
        
        button.setTitle(people + nature + objects + places + symbols)
    }
    
    override func willActivate() {
        super.willActivate()
        showFortune()
        
    }
    @IBAction func newFortune() {
        showFortune()
    }
}
