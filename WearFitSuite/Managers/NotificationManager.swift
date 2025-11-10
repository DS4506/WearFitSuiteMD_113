//
//  NotificationManager.swift
//  WearFitSuite
//
//  Created by Willie Earl on 11/10/25.
//

import Foundation
import UserNotifications

struct NotificationManager{
    static func requestPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
            print(granted ? "Notificacions allowed" : "Permission denied")
        }
    }
    
    static func send(title: String, body: String) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = .default
        
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: nil)
        UNUserNotificationCenter.current().add(request)
    }
    
}
