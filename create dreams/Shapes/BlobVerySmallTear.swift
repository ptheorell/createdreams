//
//  BlobVerySmallTear.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BlobVerySmallTear: View {
    var color: LinearGradient
    
    var body: some View {
        BlobVerySmallTearShape()
            .fill(color)
            .aspectRatio(2.31, contentMode: .fit)
    }
}


struct BlobVerySmallTearShape: Shape {
    func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 0.00592*width, y: 0.23897*height))
            path.addCurve(to: CGPoint(x: 0.20682*width, y: 0.01258*height), control1: CGPoint(x: 0.02472*width, y: 0.08188*height), control2: CGPoint(x: 0.11467*width, y: -0.01947*height))
            path.addCurve(to: CGPoint(x: 0.55704*width, y: 0.30266*height), control1: CGPoint(x: 0.23217*width, y: 0.02139*height), control2: CGPoint(x: 0.41911*width, y: 0.22893*height))
            path.addCurve(to: CGPoint(x: 0.87804*width, y: 0.40863*height), control1: CGPoint(x: 0.69182*width, y: 0.37471*height), control2: CGPoint(x: 0.78077*width, y: 0.30751*height))
            path.addCurve(to: CGPoint(x: 0.98216*width, y: 0.85303*height), control1: CGPoint(x: 1.04317*width, y: 0.58031*height), control2: CGPoint(x: 0.99075*width, y: 0.78136*height))
            path.addCurve(to: CGPoint(x: 0.74018*width, y: 0.97076*height), control1: CGPoint(x: 0.97363*width, y: 0.92431*height), control2: CGPoint(x: 0.91612*width, y: 1.04172*height))
            path.addCurve(to: CGPoint(x: 0.44689*width, y: 0.67242*height), control1: CGPoint(x: 0.62935*width, y: 0.92606*height), control2: CGPoint(x: 0.56799*width, y: 0.7459*height))
            path.addCurve(to: CGPoint(x: 0.14414*width, y: 0.57911*height), control1: CGPoint(x: 0.33814*width, y: 0.60643*height), control2: CGPoint(x: 0.16795*width, y: 0.5874*height))
            path.addCurve(to: CGPoint(x: 0.00592*width, y: 0.23897*height), control1: CGPoint(x: 0.05198*width, y: 0.54706*height), control2: CGPoint(x: -0.01288*width, y: 0.39605*height))
            path.closeSubpath()
            return path
        }
    }

#Preview {
    BlobVerySmallTear(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
