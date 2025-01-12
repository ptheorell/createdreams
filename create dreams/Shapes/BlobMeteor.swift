//
//  BlobMeteor.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BlobMeteor: View {
    var color: LinearGradient
    
    var body: some View {
        BlobMeteorShape()
            .fill(color)
            .aspectRatio(0.87, contentMode: .fit)
    }
}


struct BlobMeteorShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.40743*width, y: 0.20682*height))
        path.addCurve(to: CGPoint(x: 0.91452*width, y: 0.07439*height), control1: CGPoint(x: 0.55374*width, y: 0.21585*height), control2: CGPoint(x: 0.78995*width, y: 0.00625*height))
        path.addCurve(to: CGPoint(x: 0.98337*width, y: 0.43789*height), control1: CGPoint(x: 1.03605*width, y: 0.14086*height), control2: CGPoint(x: 0.99053*width, y: 0.31213*height))
        path.addCurve(to: CGPoint(x: 0.87975*width, y: 0.68446*height), control1: CGPoint(x: 0.97826*width, y: 0.52761*height), control2: CGPoint(x: 0.91836*width, y: 0.60131*height))
        path.addCurve(to: CGPoint(x: 0.76848*width, y: 0.9007*height), control1: CGPoint(x: 0.84489*width, y: 0.75955*height), control2: CGPoint(x: 0.8385*width, y: 0.84796*height))
        path.addCurve(to: CGPoint(x: 0.50039*width, y: 0.97018*height), control1: CGPoint(x: 0.69592*width, y: 0.95534*height), control2: CGPoint(x: 0.59491*width, y: 0.95821*height))
        path.addCurve(to: CGPoint(x: 0.1697*width, y: 0.97652*height), control1: CGPoint(x: 0.38852*width, y: 0.98435*height), control2: CGPoint(x: 0.26785*width, y: 1.02584*height))
        path.addCurve(to: CGPoint(x: 0.00043*width, y: 0.71894*height), control1: CGPoint(x: 0.06937*width, y: 0.92611*height), control2: CGPoint(x: 0.01152*width, y: 0.82015*height))
        path.addCurve(to: CGPoint(x: 0.1697*width, y: 0.41428*height), control1: CGPoint(x: -0.00973*width, y: 0.62629*height), control2: CGPoint(x: 0.1642*width, y: 0.50723*height))
        path.addCurve(to: CGPoint(x: 0.04175*width, y: 0.02049*height), control1: CGPoint(x: 0.17878*width, y: 0.26092*height), control2: CGPoint(x: -0.09073*width, y: 0.12043*height))
        path.addCurve(to: CGPoint(x: 0.40743*width, y: 0.20682*height), control1: CGPoint(x: 0.16902*width, y: -0.07552*height), control2: CGPoint(x: 0.24021*width, y: 0.19649*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    BlobMeteor(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
