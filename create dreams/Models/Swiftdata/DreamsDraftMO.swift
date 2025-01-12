//
//  DreamsDraftMO.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-09.
//

import Foundation
import SwiftData

@Model
class DreamsDraftMO {
    var name: String
    var createdAt: Date
    var rank: Int
    var priority: Int
    var finilised: Bool
    var dreamingSession: DreamingSessionMO
    
    init(name: String = "" , createdAt: Date = Date(), rank: Int = 0, priority: Int = 0, finilised: Bool = false, dreamingSession: DreamingSessionMO) {
        self.name = name
        self.createdAt = createdAt
        self.rank = rank
        self.priority = priority
        self.finilised = finilised
        self.dreamingSession = dreamingSession
    }
}
