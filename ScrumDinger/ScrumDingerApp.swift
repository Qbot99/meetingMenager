//
//  ScrumDingerApp.swift
//  ScrumDinger
//
//  Created by Hubert Kubot on 12/12/2024.
//

import SwiftUI

@main
struct ScrumDingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumView(scrums: DailyScrum.sampleData )
        }
    }
}
