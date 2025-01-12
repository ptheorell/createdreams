//
//  BlobOne.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BlobOne: View {
    var color: LinearGradient
    
    var body: some View {
        BlobOneShape()
            .fill(color)
            .aspectRatio(1.18, contentMode: .fit)
    }
}


struct BlobOneShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.49222*width, y: 0.01222*height))
        path.addCurve(to: CGPoint(x: 0.89374*width, y: 0.1031*height), control1: CGPoint(x: 0.63472*width, y: -0.00619*height), control2: CGPoint(x: 0.79543*width, y: -0.02103*height))
        path.addCurve(to: CGPoint(x: 0.9684*width, y: 0.61348*height), control1: CGPoint(x: 0.99845*width, y: 0.23531*height), control2: CGPoint(x: 1.02036*width, y: 0.44264*height))
        path.addCurve(to: CGPoint(x: 0.6553*width, y: 0.88712*height), control1: CGPoint(x: 0.92204*width, y: 0.76592*height), control2: CGPoint(x: 0.77912*width, y: 0.81949*height))
        path.addCurve(to: CGPoint(x: 0.28993*width, y: 0.98402*height), control1: CGPoint(x: 0.53598*width, y: 0.95228*height), control2: CGPoint(x: 0.41392*width, y: 1.03533*height))
        path.addCurve(to: CGPoint(x: 0.00276*width, y: 0.61708*height), control1: CGPoint(x: 0.15035*width, y: 0.92626*height), control2: CGPoint(x: 0.02543*width, y: 0.79085*height))
        path.addCurve(to: CGPoint(x: 0.1869*width, y: 0.19439*height), control1: CGPoint(x: -0.01877*width, y: 0.45209*height), control2: CGPoint(x: 0.08957*width, y: 0.31467*height))
        path.addCurve(to: CGPoint(x: 0.49222*width, y: 0.01222*height), control1: CGPoint(x: 0.26998*width, y: 0.09172*height), control2: CGPoint(x: 0.37314*width, y: 0.0276*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    BlobOne(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
