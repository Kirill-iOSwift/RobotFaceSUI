//
//  FaceView.swift
//  AwardsCollectionApp
//
//  Created by Кирилл on 25.11.2023.
//

import SwiftUI

struct FaceView: View {
    
    var body: some View {
        
        VStack {
            HStack {
                EyeView()
                Spacer()
                EyeView()
            }
            SmileView()
                .frame(width: 100, height: 100)
        }
    }
}

struct EyeView_Previews: PreviewProvider {
    static var previews: some View {
        FaceView()
            .frame(width: 200, height: 200)
    }
}
