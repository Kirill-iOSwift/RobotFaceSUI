//
//  SmileView.swift
//  AwardsCollectionApp
//
//  Created by Кирилл on 16.11.2023.
//

import SwiftUI

struct SmileView: View {
    var body: some View {
        GeometryReader { geometry in
            
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let farline = size * 0.95
            let nearline = size * 0.05
            let line = size / 6
            
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
            
            ForEach(1..<6) { iteratin in
                Path { path in
                    path.move(to: CGPoint(x: CGFloat(iteratin) * line, y: nearline))
                    path.addLine(to: CGPoint(x: CGFloat(iteratin) * line, y: farline))
                }
                .stroke(Color.black, lineWidth: 5)
            }
        }
    }
}

struct SmileView_Previews: PreviewProvider {
    static var previews: some View {
        SmileView()
            .frame(width: 300, height: 300)
    }
}
