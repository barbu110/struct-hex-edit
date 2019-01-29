//
//  AppDelegate.swift
//  StructHexEdit
//
//  Created by Victor Barbu on 29/01/2019.
//  Copyright © 2019 Victor Barbu. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var structureNamePicker: StructureNamePickerWindowController?

    /**
     * Display a prompt for the structure name to be passed to the structure editor.
     */
    @IBAction func createStructurePrompt(_ sender: Any) {
        guard structureNamePicker != nil else {
            return
        }

        NSApplication.shared.mainWindow?.beginSheet(structureNamePicker!.window!,
                                                    completionHandler: nil)
    }
    
    @objc func showStructureEditor(notification: NSNotification) {
        NSApplication.shared.mainWindow?.endSheet(structureNamePicker!.window!)
        
        let dict = notification.object as! Dictionary<String, String>
        let structName = dict["name"]!
        
        let alert = NSAlert()
        alert.messageText = "Creating the structure"
        alert.informativeText = String(format: "Creating a structure with name %@", structName)
        
        alert.runModal()
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        structureNamePicker = StructureNamePickerWindowController(
            windowNibName: "StructureNamePickerWindowController")
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(showStructureEditor(notification:)),
            name: Notifications.StructNamePickerOK,
            object: nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func structNamePickerHandler(notification: NSNotification) {
        
    }
    
}

