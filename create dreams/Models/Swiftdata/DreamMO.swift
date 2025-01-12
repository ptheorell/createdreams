//
//  DreamMO.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-12.
//

import Foundation
import SwiftData

@Model
class DreamMO {
    var name: String
    @Attribute(.externalStorage) var media: Data?
    var createdAt: Date
    var rank: Int
    var priority: Int
    var myWhys: [String]
    @Relationship(deleteRule: .cascade, inverse: \JournalMO.dream) var journals: [JournalMO]
    
    init(name: String = "", media: Data? = nil, createdAt: Date = Date(), rank: Int = 0, priority: Int = 0, myWhys: [String] = [], journals: [JournalMO] = []) {
        self.name = name
        self.media = media
        self.createdAt = createdAt
        self.rank = rank
        self.priority = priority
        self.myWhys = myWhys
        self.journals = journals
    }
}
