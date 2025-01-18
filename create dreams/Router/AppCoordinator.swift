//
//  AppCoordinator.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-13.
//

import SwiftUI

class AppCoordinator: AppCoordinatorProtocol {
    @Published var path: NavigationPath = NavigationPath()
    @Published var sheet: Sheet?
    @Published var fullScreenCover: FullScreenCover?
    
    
    // MARK: - Navigation Functions
    func push(_ screen: Screen) {
        path.append(screen)
    }
    
    func presentSheet(_ sheet: Sheet) {
        self.sheet = sheet
    }
    
    func presentFullScreenCover(_ fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func pop() {
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func dismissSheet() {
        self.sheet = nil
    }
    
    func dismissFullScreenOver() {
        self.fullScreenCover = nil
    }
    
    // MARK: - Presentation Style Providers
    @ViewBuilder
    func build(_ screen: Screen) -> some View {
        switch screen {
        case .listDreams:
            ContentView()
        case .detailDream(dreamName: let dream):
            DreamDetails(dream: dream)
        case .prioritizeDreams(session: let session):
            PriortizeDreamsDraft(dreamSession: session)
        case .rankDreams(session: let session):
            RankDreamsDraft(dreamSession: session)
        }
    }
    
    @ViewBuilder
    func build(_ sheet: Sheet) -> some View {
        switch sheet {
        case .addJournal(dramName: let dream):
            AddJournal(dream: dream)
        }
    }
    
    @ViewBuilder
    func build(_ fullScreenCover: FullScreenCover) -> some View {
        switch fullScreenCover {
        case .dreamSession(session: let session):
            CreateDreamsDraft(dreamSession: session)
        }
    }
}
