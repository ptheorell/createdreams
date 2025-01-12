//
//  BlobTwo.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BlobTwo: View {
    var color: LinearGradient
    
    var body: some View {
        BlobTwoShape()
            .fill(color)
            .aspectRatio(1.06, contentMode: .fit)
    }
}


struct BlobTwoShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47109*width, y: 0.00029*height))
        path.addCurve(to: CGPoint(x: 0.97618*width, y: 0.29725*height), control1: CGPoint(x: 0.6834*width, y: -0.00571*height), control2: CGPoint(x: 0.91159*width, y: 0.08076*height))
        path.addCurve(to: CGPoint(x: 0.72254*width, y: 0.84316*height), control1: CGPoint(x: 1.04003*width, y: 0.51128*height), control2: CGPoint(x: 0.89225*width, y: 0.71087*height))
        path.addCurve(to: CGPoint(x: 0.15644*width, y: 0.93625*height), control1: CGPoint(x: 0.55194*width, y: 0.97614*height), control2: CGPoint(x: 0.32826*width, y: 1.06741*height))
        path.addCurve(to: CGPoint(x: 0.042*width, y: 0.32367*height), control1: CGPoint(x: -0.01871*width, y: 0.80254*height), control2: CGPoint(x: -0.03083*width, y: 0.54029*height))
        path.addCurve(to: CGPoint(x: 0.47109*width, y: 0.00029*height), control1: CGPoint(x: 0.10747*width, y: 0.12893*height), control2: CGPoint(x: 0.27774*width, y: 0.00576*height))
        path.closeSubpath()
        return path
    }
}

#Preview {
    BlobTwo(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
