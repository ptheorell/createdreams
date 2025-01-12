//
//  BigWave.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BigWave: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var color: LinearGradient
    
    var body: some View {
        BigWaveShape()
            .fill(color)
            .aspectRatio(horizontalSizeClass == .compact ? 0.69 : 3.0, contentMode: .fit)
    }
}

struct BigWaveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.55539*height))
        path.addLine(to: CGPoint(x: 0.91667*width, y: 0.53688*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.38878*height), control1: CGPoint(x: 0.83333*width, y: 0.51837*height), control2: CGPoint(x: 0.66667*width, y: 0.48134*height))
        path.addCurve(to: CGPoint(x: 0.08333*width, y: 0.07405*height), control1: CGPoint(x: 0.33333*width, y: 0.29621*height), control2: CGPoint(x: 0.16667*width, y: 0.1481*height))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0.99971*height))
        path.addLine(to: CGPoint(x: 0.08333*width, y: 0.99971*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.99971*height), control1: CGPoint(x: 0.16667*width, y: 0.99971*height), control2: CGPoint(x: 0.33333*width, y: 0.99971*height))
        path.addCurve(to: CGPoint(x: 0.91667*width, y: 0.99971*height), control1: CGPoint(x: 0.66667*width, y: 0.99971*height), control2: CGPoint(x: 0.83333*width, y: 0.99971*height))
        path.addLine(to: CGPoint(x: width, y: 0.99971*height))
        path.addLine(to: CGPoint(x: width, y: 0.55539*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    BigWave(color: LinearGradient(colors: [.green], startPoint: .bottom, endPoint: .top))
}
