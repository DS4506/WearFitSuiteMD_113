//
//  ContentView.swift
//  WearFitSuite
//
//  Created by Willie Earl on 11/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DashboardView()
                .onAppear{
                    NotificationManager.requestPermission()
                }
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, Dave Smith!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
