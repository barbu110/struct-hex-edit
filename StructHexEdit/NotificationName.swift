//
//  NotificationName.swift
//  StructHexEdit
//
//  Created by Victor Barbu on 29/01/2019.
//  Copyright © 2019 Victor Barbu. All rights reserved.
//

import Foundation

extension Notification.Name {
    // Sent when the Structure Name Picker is cancelled
    static let StructNamePickerCancel = "StructNamePickerCancel"
    
    // Sent when the Structure Name Picker is submitted (i.e. a new Structure is being creasted)
    static let StructNamePickerOK = "StructNamePickerOK"
}
