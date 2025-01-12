//
//  BlobThree.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct BlobThree: View {
    var color: LinearGradient
    
    var body: some View {
        BlobThreeShape()
            .fill(color)
            .aspectRatio(1.39, contentMode: .fit)
    }
}


struct BlobThreeShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.98533*width, y: 0.61786*height))
        path.addCurve(to: CGPoint(x: 0.55161*width, y: 0.98925*height), control1: CGPoint(x: 0.94474*width, y: 0.87555*height), control2: CGPoint(x: 0.75055*width, y: 1.04182*height))
        path.addCurve(to: CGPoint(x: 0.00492*width, y: 0.19677*height), control1: CGPoint(x: 0.35266*width, y: 0.93667*height), control2: CGPoint(x: -0.03568*width, y: 0.45445*height))
        path.addCurve(to: CGPoint(x: 0.6986*width, y: 0.05609*height), control1: CGPoint(x: 0.04551*width, y: -0.06092*height), control2: CGPoint(x: 0.49966*width, y: 0.00351*height))
        path.addCurve(to: CGPoint(x: 0.98533*width, y: 0.61786*height), control1: CGPoint(x: 0.89755*width, y: 0.10866*height), control2: CGPoint(x: 1.02593*width, y: 0.36018*height))
        path.closeSubpath()
        return path
    }
}


#Preview {
    BlobThree(color: LinearGradient(colors: [.red, .blue], startPoint: .bottom, endPoint: .top))
}
