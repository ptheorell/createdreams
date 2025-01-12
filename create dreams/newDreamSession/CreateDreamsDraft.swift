//
//  CreateDreamsDraft.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-12.
//

import SwiftUI

struct CreateDreamsDraft: View {
    @Environment(\.modelContext) private var modelContext
    @State private var textInput: String = ""
    let dreamSession: DreamingSessionMO
    
    
    func save() {
        if !textInput.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            var draft = DreamsDraftMO(dreamingSession: dreamSession)
            draft.name = textInput.trimmingCharacters(in: .whitespacesAndNewlines)
            draft.priority = dreamSession.dreamsDrafts.count
            modelContext.insert(draft)
            textInput = ""
        }
    }
    
    var body: some View {
        VStack {
            TextField("Placerholder", text: $textInput)
            .submitLabel(.return)
            .onSubmit {
                save()
            }
            
            Button(action: {
                //item.createdAt = Date()
            }, label: {
                Text("press")
            } )
        }
    }
}

#Preview {
    CreateDreamsDraft(dreamSession: DreamingSessionMO())
}
