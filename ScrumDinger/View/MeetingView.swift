//
//  ContentView.swift
//  ScrumDinger
//
//  Created by Hubert Kubot on 12/12/2024.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 5,total: 15)
            
            HStack{
                VStack{
                    Text("Seconds Elapsed")
                    HStack{
                        Image(systemName: "hourglass")
                        Text("300")
                    }}
                Spacer()
                VStack{
                    Text("Seconds Remaining")
                    HStack{
                        Image(systemName: "hourglass")
                        Text("600")
                    }
                }
            }.padding()
            Spacer()
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 30))
                .frame(width: 300 , height: 300)
                Spacer()
            HStack{
                Text("Speaker 1 of 3")
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "forward.fill")
                }

            }
            .padding()
        }.padding()
        }
    }


#Preview {
    MeetingView()
}
