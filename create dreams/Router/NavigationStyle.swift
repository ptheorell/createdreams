//
//  NavigationStyle.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-12.
//

import Foundation

enum Screen: Identifiable, Hashable {
    case home
    case listHabit
    case detailHabit(named: Habit)
    
    var id: Self { return self }
}

enum Sheet: Identifiable, Hashable {
    case detailTask(named: Task)
    
    var id: Self { return self }
}

enum FullScreenCover: Identifiable, Hashable {
    case addHabit(onSaveButtonTap: ((Habit) -> Void))

    var id: Self { return self }
}

extension FullScreenCover {
    // Conform to Hashable
    func hash(into hasher: inout Hasher) {
        switch self {
        case .addHabit:
            hasher.combine("addHabit")
        }
    }
    
    // Conform to Equatable
    static func == (lhs: FullScreenCover, rhs: FullScreenCover) -> Bool {
        switch (lhs, rhs) {
        case (.addHabit, .addHabit):
            return true
        }
    }
}
