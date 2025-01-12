//
//  JournalMO.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-12.
//

import Foundation
import SwiftData

@Model
class JournalMO {
    var content: String
    var createdAt: Date
    var lastModifiedAt: Date
    var dream: DreamMO

    
    init(content: String = "", createdAt: Date = Date(), lastModifiedAt: Date = Date(), dream: DreamMO) {
        self.content = content
        self.createdAt = createdAt
        self.lastModifiedAt = lastModifiedAt
        self.dream = dream
    }
}
