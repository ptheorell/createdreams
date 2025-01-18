//
//  CoordinatorView.swift
//  create dreams
//
//  Created by Peter Theorell on 2025-01-18.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject var appCoordinator: AppCoordinator = AppCoordinator()
    
    var body: some View {
        NavigationStack(path: $appCoordinator.path) {
            appCoordinator.build(.listDreams)
                .navigationDestination(for: Screen.self) { screen in
                    appCoordinator.build(screen)
                }
                .sheet(item: $appCoordinator.sheet) { sheet in
                    appCoordinator.build(sheet)
                }
                .fullScreenCover(item: $appCoordinator.fullScreenCover) { fullScreenCover in
                    appCoordinator.build(fullScreenCover)
                }
        }
        .environmentObject(appCoordinator)
    }
}

#Preview {
    CoordinatorView()
}
