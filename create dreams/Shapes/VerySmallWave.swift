//
//  VerySmallWave.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct VerySmallWave: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var color: LinearGradient
    
    var body: some View {
        VerySmallWaveShape()
            .fill(color)
            .aspectRatio(horizontalSizeClass == .compact ? 4.1 : 5.7, contentMode: .fit)
    }
}


struct VerySmallWaveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.75*height))
        path.addLine(to: CGPoint(x: 0.91667*width, y: 0.77083*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.70833*height), control1: CGPoint(x: 0.83333*width, y: 0.79167*height), control2: CGPoint(x: 0.66667*width, y: 0.83333*height))
        path.addCurve(to: CGPoint(x: 0.08333*width, y: 0.14583*height), control1: CGPoint(x: 0.33333*width, y: 0.58333*height), control2: CGPoint(x: 0.16667*width, y: 0.29167*height))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: 0.08333*width, y: height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: height), control1: CGPoint(x: 0.16667*width, y: height), control2: CGPoint(x: 0.33333*width, y: height))
        path.addCurve(to: CGPoint(x: 0.91667*width, y: height), control1: CGPoint(x: 0.66667*width, y: height), control2: CGPoint(x: 0.83333*width, y: height))
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: width, y: 0.75*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    VerySmallWave(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
