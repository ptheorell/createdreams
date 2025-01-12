//
//  PriortizeDreamsDraft.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-12.
//

import SwiftUI

struct PriortizeDreamsDraft: View {
    @State private var textInput: String = ""
    let dreamSession: DreamingSessionMO
    func save() {
        print(textInput)
    }
    
    var body: some View {
        VStack {
            TextField("Placerholder", text: $textInput, onCommit: {
                save()
            })
            Button(action: {
                //item.createdAt = Date()
            }, label: {
                Text("press")
            } )
        }
    }
}

#Preview {
    PriortizeDreamsDraft(dreamSession: DreamingSessionMO())
}
