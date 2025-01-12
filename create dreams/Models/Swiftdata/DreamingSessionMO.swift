//
//  DreamingSessionMO.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-09.
//

import Foundation
import SwiftData


@Model
class DreamingSessionMO {
    var createdAt: Date
    var createOnboardSeen: Bool
    var rankOnboardSeen: Bool
    var priortyOneOnboardSeen: Bool
    var setupDone: Bool
    @Relationship(deleteRule: .cascade, inverse: \DreamsDraftMO.dreamingSession) var dreamsDrafts: [DreamsDraftMO]
    
    init(createAt: Date = Date(), createOnboardSeen: Bool = false, rankOnboardSeen: Bool = false, priortyOneOnboardSeen: Bool = false, setupDone: Bool = false, dreamsDrafts: [DreamsDraftMO] = []) {
        self.createdAt = createAt
        self.createOnboardSeen = createOnboardSeen
        self.rankOnboardSeen = rankOnboardSeen
        self.priortyOneOnboardSeen = priortyOneOnboardSeen
        self.setupDone = setupDone
        self.dreamsDrafts = dreamsDrafts
    }
}


