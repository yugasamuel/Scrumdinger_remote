//
//  EditScrumSheet.swift
//  Scrumdinger
//
//  Created by Yuga Samuel on 28/12/23.
//

import SwiftUI

struct EditScrumSheet: View {
    @Binding var editingScrum: DailyScrum
    @Binding var scrum: DailyScrum
    @Binding var isPresentingEditView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(editingScrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditView = false
                            scrum = editingScrum
                        }
                    }
                }
        }
    }
}

#Preview {
    EditScrumSheet(editingScrum: .constant(DailyScrum.sampleData[0]),
                   scrum: .constant(DailyScrum.sampleData[0]),
                   isPresentingEditView: .constant(true))
}
