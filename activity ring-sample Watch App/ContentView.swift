//
//  ContentView.swift
//  activity ring-sample Watch App
//
//  Created by Rifat Khadafy on 31/05/24.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    let hkActivitySummary = {
        let summary = HKActivitySummary()
        summary.activeEnergyBurned = HKQuantity(unit: .kilocalorie(), doubleValue: 100)
        summary.activeEnergyBurnedGoal = HKQuantity(unit: .kilocalorie(), doubleValue: 300)
        summary.appleExerciseTime = HKQuantity(unit: .minute(), doubleValue: 5)
        summary.appleExerciseTimeGoal = HKQuantity(unit: .minute(), doubleValue: 30)
        summary.appleStandHours = HKQuantity(unit: .count(), doubleValue: 2)
        summary.appleStandHoursGoal = HKQuantity(unit: .count(), doubleValue: 8)
        return summary
    }()

    
    var body: some View {
        ActivityRingViewRepresentable(activitySummary: hkActivitySummary)
    }
}

#Preview {
    ContentView()
}
