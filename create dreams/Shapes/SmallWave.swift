//
//  SmallWave.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct SmallWave: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var color: LinearGradient
    
    var body: some View {
        SmallWaveShape()
            .fill(color)
            .aspectRatio(horizontalSizeClass == .compact ? 1.02 : 3.9, contentMode: .fit)
    }
}


struct SmallWaveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0.04167*width, y: 0.0185*height))
        path.addCurve(to: CGPoint(x: 0.25*width, y: 0.12949*height), control1: CGPoint(x: 0.08333*width, y: 0.037*height), control2: CGPoint(x: 0.16667*width, y: 0.074*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.35148*height), control1: CGPoint(x: 0.33333*width, y: 0.18499*height), control2: CGPoint(x: 0.41667*width, y: 0.25899*height))
        path.addCurve(to: CGPoint(x: 0.75*width, y: 0.64747*height), control1: CGPoint(x: 0.58333*width, y: 0.44398*height), control2: CGPoint(x: 0.66667*width, y: 0.55497*height))
        path.addCurve(to: CGPoint(x: 0.95833*width, y: 0.85096*height), control1: CGPoint(x: 0.83333*width, y: 0.73996*height), control2: CGPoint(x: 0.91667*width, y: 0.81396*height))
        path.addLine(to: CGPoint(x: width, y: 0.88796*height))
        path.addLine(to: CGPoint(x: width, y: 0.99895*height))
        path.addLine(to: CGPoint(x: 0.95833*width, y: 0.99895*height))
        path.addCurve(to: CGPoint(x: 0.75*width, y: 0.99895*height), control1: CGPoint(x: 0.91667*width, y: 0.99895*height), control2: CGPoint(x: 0.83333*width, y: 0.99895*height))
        path.addCurve(to: CGPoint(x: 0.5*width, y: 0.99895*height), control1: CGPoint(x: 0.66667*width, y: 0.99895*height), control2: CGPoint(x: 0.58333*width, y: 0.99895*height))
        path.addCurve(to: CGPoint(x: 0.25*width, y: 0.99895*height), control1: CGPoint(x: 0.41667*width, y: 0.99895*height), control2: CGPoint(x: 0.33333*width, y: 0.99895*height))
        path.addCurve(to: CGPoint(x: 0.04167*width, y: 0.99895*height), control1: CGPoint(x: 0.16667*width, y: 0.99895*height), control2: CGPoint(x: 0.08333*width, y: 0.99895*height))
        path.addLine(to: CGPoint(x: 0, y: 0.99895*height))
        path.addLine(to: CGPoint(x: 0, y: 0))
        path.closeSubpath()
        return path
    }
}

#Preview {
    SmallWave(color: LinearGradient(colors: [.red], startPoint: .bottom, endPoint: .top))
}
