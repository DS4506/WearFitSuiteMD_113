//
//  DashboardView.swift
//  WearFitSuite
//
//  Created by Willie Earl on 11/10/25.
//

import SwiftUI

struct DashboardView: View {
    @StateObject private var motion = MotionManager()
    @StateObject private var health = HealthManager()
    @State private var image: UIImage?
    
    var body: some View {
        VStack {
            
            Text("Steps \(MotionManager.steps)")
            // heath.heartRate
            
            
            Button("Capture photo") {
                NotificationManager.send(title: "Camera", body: "Opening camera")
            }
        }
        .onAppear(){
            motion.startTracking()
            health.requestAccess()
        }
    }
}

#Preview {
    DashboardView()
}
