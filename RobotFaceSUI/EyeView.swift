//
//  EyeView.swift
//  AwardsCollectionApp
//
//  Created by Кирилл on 25.11.2023.
//

import SwiftUI

struct EyeView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let farline = size * 0.9
            let nearline = size * 0.1
            
            Path { path in
                path.move(to: CGPoint(x: nearline, y: nearline))
                path.addLine(to: CGPoint(x: farline, y: nearline))
                path.addLine(to: CGPoint(x: farline, y: farline))
                path.addLine(to: CGPoint(x: nearline, y: farline))
                path.closeSubpath()
            }
            .stroke(Color.black, lineWidth: 5)
            
            Path { path in
                path.move(to: CGPoint(x: nearline, y: middle))
                path.addLine(to: CGPoint(x: farline, y: middle))
            }
            .stroke(Color.black, lineWidth: 5)
            
            Path { path in
                path.move(to: CGPoint(x: middle - nearline, y: middle))
                path.addLine(to: CGPoint(x: middle - nearline, y: middle + nearline))
                path.addLine(to: CGPoint(x: middle + nearline, y: middle + nearline))
                path.addLine(to: CGPoint(x: middle + nearline, y: middle))
            }
        }
    }
}

struct TestEyeView_Previews: PreviewProvider {
    static var previews: some View {
        EyeView()
            .frame(width: 100, height: 100)
    }
}
