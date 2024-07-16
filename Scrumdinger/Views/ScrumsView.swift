//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by JOY JAIN on 10/06/24.
//

import SwiftUI

struct ScrumsView: View {
//    let scrums: [DailyScrum]
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                        .listRowBackground(scrum.theme.mainColor)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

//#Preview {
//    ScrumsView()
//}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
//        ScrumsView(scrums: DailyScrum.sampleData)
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}
