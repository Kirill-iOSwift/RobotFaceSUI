//
//  ShowFaceView.swift
//  RobotFaceSUI
//
//  Created by Кирилл on 28.11.2023.
//

import SwiftUI

struct ShowFaceView: View {
    
    @State private var faceIsShowing = false
    @State private var opacity = 0.0
    @State private var scale = 0.0
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                Spacer()
                FaceView()
                    .frame(width: 200, height: 200)
                    .background(.white)
                    .cornerRadius(10)
                    .opacity(opacity)
                    .scaleEffect(scale)
                    .rotationEffect(faceIsShowing ? .degrees(360) : .degrees(0))
                    .animation(.easeInOut(duration: 1), value: faceIsShowing)
                Spacer()
                
                Button(action: buttonAction) {
                    Text(faceIsShowing ? "Face Off" : "Face On")
                        .font(.largeTitle)
                }
                .padding()
                .background(.pink)
                .foregroundColor(.black)
                .cornerRadius(12)
                .padding()
            }
        }
    }
    private func buttonAction() {
        withAnimation() {
            if faceIsShowing {
                scale = 0
                opacity = 0
                faceIsShowing.toggle()
            } else {
                scale = 1
                opacity = 1
                faceIsShowing.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ShowFaceView()
    }
}
