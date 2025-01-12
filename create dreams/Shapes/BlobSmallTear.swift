//
//  BlobSmallTear.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BlobSmallTear: View {
    var color: LinearGradient
    
    var body: some View {
        BlobSmallTearShape()
            .fill(color)
            .aspectRatio(1.71, contentMode: .fit)
    }
}


struct BlobSmallTearShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.39772*width, y: 0.01275*height))
        path.addCurve(to: CGPoint(x: 0.50786*width, y: 0.39148*height), control1: CGPoint(x: 0.50488*width, y: 0.0815*height), control2: CGPoint(x: 0.42998*width, y: 0.24956*height))
        path.addCurve(to: CGPoint(x: 0.96229*width, y: 0.35996*height), control1: CGPoint(x: 0.57894*width, y: 0.52102*height), control2: CGPoint(x: 0.90853*width, y: 0.20854*height))
        path.addCurve(to: CGPoint(x: 0.9047*width, y: 0.96412*height), control1: CGPoint(x: 1.01927*width, y: 0.52045*height), control2: CGPoint(x: 1.00237*width, y: 0.87549*height))
        path.addCurve(to: CGPoint(x: 0.42875*width, y: 0.86117*height), control1: CGPoint(x: 0.80221*width, y: 1.05713*height), control2: CGPoint(x: 0.53253*width, y: 0.95005*height))
        path.addCurve(to: CGPoint(x: 0.32584*width, y: 0.69846*height), control1: CGPoint(x: 0.38517*width, y: 0.82384*height), control2: CGPoint(x: 0.37012*width, y: 0.73339*height))
        path.addCurve(to: CGPoint(x: 0.00248*width, y: 0.5249*height), control1: CGPoint(x: 0.21933*width, y: 0.61444*height), control2: CGPoint(x: 0.03235*width, y: 0.71672*height))
        path.addCurve(to: CGPoint(x: 0.25254*width, y: 0.22769*height), control1: CGPoint(x: -0.02445*width, y: 0.35197*height), control2: CGPoint(x: 0.17527*width, y: 0.35009*height))
        path.addCurve(to: CGPoint(x: 0.39772*width, y: 0.01275*height), control1: CGPoint(x: 0.32456*width, y: 0.11361*height), control2: CGPoint(x: 0.30537*width, y: -0.04649*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    BlobSmallTear(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
