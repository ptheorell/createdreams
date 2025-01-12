//
//  EggView.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct EggView: View {
    var color: LinearGradient
    
    var body: some View {
        EggShape()
            .fill(color)
            .aspectRatio(0.84, contentMode: .fit)
    }
}


struct EggShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.50717*width, y: 0.00001*height))
        path.addCurve(to: CGPoint(x: 0.9411*width, y: 0.36477*height), control1: CGPoint(x: 0.73373*width, y: 0.0015*height), control2: CGPoint(x: 0.86927*width, y: 0.1848*height))
        path.addCurve(to: CGPoint(x: 0.86407*width, y: 0.89427*height), control1: CGPoint(x: 1.01551*width, y: 0.55121*height), control2: CGPoint(x: 1.04742*width, y: 0.77155*height))
        path.addCurve(to: CGPoint(x: 0.15064*width, y: 0.89385*height), control1: CGPoint(x: 0.65869*width, y: 1.03175*height), control2: CGPoint(x: 0.35726*width, y: 1.03002*height))
        path.addCurve(to: CGPoint(x: 0.05178*width, y: 0.35892*height), control1: CGPoint(x: -0.03653*width, y: 0.77049*height), control2: CGPoint(x: -0.02369*width, y: 0.54812*height))
        path.addCurve(to: CGPoint(x: 0.50717*width, y: 0.00001*height), control1: CGPoint(x: 0.1248*width, y: 0.17586*height), control2: CGPoint(x: 0.27673*width, y: -0.0015*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    EggView(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
