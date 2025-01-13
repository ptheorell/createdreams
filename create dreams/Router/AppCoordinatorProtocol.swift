//
//  AppCoordinatorProtocol.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-12.
//

import SwiftUI

protocol AppCoordinatorProtocol: ObservableObject {
    var path: NavigationPath { get set }
    var sheet: Sheet? { get set }
    var fullScreenCover: FullScreenCover? { get set }
    func push(_ screen:  Screen)
    func presentSheet(_ sheet: Sheet)
    func presentFullScreenCover(_ fullScreenCover: FullScreenCover)
    func pop()
    func popToRoot()
    func dismissSheet()
    func dismissFullScreenOver()
}

enum Screen: Identifiable, Hashable {
    case listDreams
    case detailDream(name: DreamMO)
    
    var id: Self { return self }
}

enum Sheet: Identifiable, Hashable {
    case addJournal
    
    var id: Self { return self }
}

enum FullScreenCover: Identifiable, Hashable {
    case dreamSessions

    var id: Self { return self }
}

extension FullScreenCover {
    // Conform to Hashable
    func hash(into hasher: inout Hasher) {
        switch self {
        case .dreamSessions:
            hasher.combine("dreamSessions")
        }
    }
    
    // Conform to Equatable
    static func == (lhs: FullScreenCover, rhs: FullScreenCover) -> Bool {
        switch (lhs, rhs) {
        case (.dreamSessions, .dreamSessions):
            return true
        }
    }
}
