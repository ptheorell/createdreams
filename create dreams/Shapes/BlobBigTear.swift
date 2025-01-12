//
//  BlobBigTear.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BlobBigTear: View {
    var color: LinearGradient
    
    var body: some View {
        BlobBigTearShape()
            .fill(color)
            .aspectRatio(0.7, contentMode: .fit)
    }
}

struct BlobBigTearShape: Shape {
    func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 0.6313*width, y: 0.01707*height))
            path.addCurve(to: CGPoint(x: 0.76186*width, y: 0.27118*height), control1: CGPoint(x: 0.72621*width, y: 0.06294*height), control2: CGPoint(x: 0.71146*width, y: 0.18684*height))
            path.addCurve(to: CGPoint(x: 0.84166*width, y: 0.36917*height), control1: CGPoint(x: 0.78364*width, y: 0.30764*height), control2: CGPoint(x: 0.81463*width, y: 0.33554*height))
            path.addCurve(to: CGPoint(x: 0.96591*width, y: 0.525*height), control1: CGPoint(x: 0.88435*width, y: 0.42227*height), control2: CGPoint(x: 0.9496*width, y: 0.46156*height))
            path.addCurve(to: CGPoint(x: 0.9593*width, y: 0.82661*height), control1: CGPoint(x: 0.99177*width, y: 0.62553*height), control2: CGPoint(x: 1.02148*width, y: 0.73925*height))
            path.addCurve(to: CGPoint(x: 0.6313*width, y: 0.99514*height), control1: CGPoint(x: 0.89041*width, y: 0.9234*height), control2: CGPoint(x: 0.75705*width, y: 1.02338*height))
            path.addCurve(to: CGPoint(x: 0.40587*width, y: 0.70236*height), control1: CGPoint(x: 0.49823*width, y: 0.96527*height), control2: CGPoint(x: 0.49739*width, y: 0.79245*height))
            path.addCurve(to: CGPoint(x: 0.18591*width, y: 0.55667*height), control1: CGPoint(x: 0.34318*width, y: 0.64064*height), control2: CGPoint(x: 0.24377*width, y: 0.62194*height))
            path.addCurve(to: CGPoint(x: 0.00513*width, y: 0.25028*height), control1: CGPoint(x: 0.10346*width, y: 0.46366*height), control2: CGPoint(x: -0.02756*width, y: 0.36468*height))
            path.addCurve(to: CGPoint(x: 0.32744*width, y: 0.06129*height), control1: CGPoint(x: 0.0374*width, y: 0.13733*height), control2: CGPoint(x: 0.20556*width, y: 0.10668*height))
            path.addCurve(to: CGPoint(x: 0.6313*width, y: 0.01707*height), control1: CGPoint(x: 0.42435*width, y: 0.02519*height), control2: CGPoint(x: 0.53905*width, y: -0.0275*height))
            path.closeSubpath()
            return path
        }
    }


#Preview {
    BlobBigTear(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
