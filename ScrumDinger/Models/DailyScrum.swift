//
//  DailyScrum.swift
//  ScrumDinger
//
//  Created by Hubert Kubot on 12/12/2024.
//

import Foundation


struct DailyScrum: Identifiable {
    let id: UUID = UUID()
   var title: String
    var attendees: [Attendees]
   var lengthInMinutes: Int
   var theme: Theme
    
    init(title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.title = title
        self.attendees = attendees.map{Attendees(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    }


extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 5,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}

extension DailyScrum {
    struct Attendees:Identifiable {
        let id: UUID = UUID()
        var name: String
    }
}
