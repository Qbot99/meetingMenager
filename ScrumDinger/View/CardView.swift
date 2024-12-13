//
//  CardView.swift
//  ScrumDinger
//
//  Created by Hubert Kubot on 12/12/2024.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment:.leading, spacing: 20){
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            HStack{
                HStack{
                    Label("\(scrum.attendees.count)", systemImage: "person.3")
                        .accessibilityLabel("\(scrum.attendees.count) participants")
                    Spacer()
                    Label("\(scrum.lengthInMinutes)", systemImage: "clock")
                        .labelStyle(.trailingIcon)
                        .accessibilityLabel("\(scrum.lengthInMinutes) minutes")
                }.font(.caption)
            }
        }.padding(10)
            .foregroundStyle(scrum.theme.accentColor)
    }
}

#Preview {
    let scrum = DailyScrum.sampleData[0]
    CardView(scrum: scrum)
        .background(scrum.theme.mainColor)
        .frame(width: 400,height: 60)
    
    
}
