//
//  StructureNamePickerWindowController.swift
//  StructHexEdit
//
//  Created by Victor Barbu on 29/01/2019.
//  Copyright © 2019 Victor Barbu. All rights reserved.
//

import Cocoa

class StructureNamePickerWindowController: NSWindowController {

    @IBOutlet var structName: NSTextField!

    override func windowDidLoad() {
        super.windowDidLoad()
    }
    
    @IBAction func doCancel(_ sender: Any) {
        NotificationCenter.default.post(name: Notifications.StructNamePickerCancel, object: nil)
    }

    @IBAction func doCreate(_ sender: Any) {
        var structData = Dictionary<String, String>()
        structData["name"] = structName.stringValue

        NotificationCenter.default.post(name: Notifications.StructNamePickerOK, object: structData)
    }
}
