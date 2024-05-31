//
//  ActivityRingViewRepresentable.swift
//  activity ring-sample Watch App
//
//  Created by Rifat Khadafy on 31/05/24.
//

import Foundation
import SwiftUI
import HealthKit


struct ActivityRingViewRepresentable: WKInterfaceObjectRepresentable {
    var activitySummary: HKActivitySummary
    
    func makeWKInterfaceObject(context: Context) -> WKInterfaceActivityRing {
        return WKInterfaceActivityRing()
    }
    
    func updateWKInterfaceObject(_ wkInterfaceObject: WKInterfaceActivityRing, context: Context) {
        wkInterfaceObject.setActivitySummary(activitySummary, animated: true)
    }
}
