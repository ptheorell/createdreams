//
//  testdatapassing.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-11.
//

import SwiftUI

struct testdatapassing: View {
    var item: DreamingSessionMO
    var body: some View {
        
        VStack {
            Text(item.createdAt, format: Date.FormatStyle(date: .numeric, time: .standard))
            Button(action: {
                item.createdAt = Date()
            }, label: {
                Text("press")
            } )
        }
    }
}

#Preview {
    testdatapassing(item: DreamingSessionMO())
}
