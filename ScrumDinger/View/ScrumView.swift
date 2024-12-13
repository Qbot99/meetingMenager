//
//  ScrumView.swift
//  ScrumDinger
//
//  Created by Hubert Kubot on 12/12/2024.
//

import SwiftUI

struct ScrumView: View {
    let scrums: [DailyScrum]
    var body: some View {
        NavigationStack{
            List(scrums) {scrum in
                NavigationLink(destination: DetailView(scrum: scrum)){
                    CardView(scrum: scrum)
                    
                }.listRowBackground(scrum.theme.mainColor)
            }.navigationTitle("DailyScrums")
                .toolbar {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }.accessibilityLabel("Adding new scrum")
        }
    }
}

#Preview {
    ScrumView(scrums: DailyScrum.sampleData)
}
