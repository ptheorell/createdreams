//
//  RoundedCornersShape.swift
//  FindMyGoal
//
//  Created by Peter Theorell on 2024-08-16.
//

import SwiftUI

struct RoundedCornersShape: Shape {
   let corners: UIRectCorner
   let radius: CGFloat
   
   func path(in rect: CGRect) -> Path {
       let path = UIBezierPath(roundedRect: rect,
                               byRoundingCorners: corners,
                               cornerRadii: CGSize(width: radius, height: radius))
       return Path(path.cgPath)
   }
}

#Preview {
    RoundedCornersShape(corners: [.bottomLeft], radius: 20)
}
