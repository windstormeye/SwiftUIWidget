//
//  PJWidgetCenter.swift
//  SwiftUIWidget
//
//  Created by 翁培钧 on 2020/12/5.
//

import WidgetKit
import Foundation

@objcMembers class PJWidgetCenter: NSObject {
    class func reloadWidgetTimeline() {
        if let userDefaults = UserDefaults(suiteName: "group.com.pjhubs.swiftuiwidge") {
            userDefaults.setValue("2333", forKey: "integer")
        }
        WidgetCenter.shared.reloadAllTimelines();
    }
}
