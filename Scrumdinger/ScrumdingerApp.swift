//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Yuga Samuel on 28/12/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
