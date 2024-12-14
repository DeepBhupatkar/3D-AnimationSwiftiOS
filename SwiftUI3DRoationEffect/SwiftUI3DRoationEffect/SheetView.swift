//
//  SheetView.swift
//  SwiftUI3DRoationEffect
//
//  Created by Deep Bhupatkar on 10/12/24.
//

import SwiftUI

struct SheetView: View {
    @Binding var showSheet: Bool
    @State private var rotationDegree: Double = 0

    
    var body: some View {
        VStack {
            Text("Deep’s Photo Frame")
                .font(.title)
                .bold()
                .padding(.top, 60)
            
            Image("apple-wwdc-2024")
                .resizable()
                .frame(width: 300, height: 300)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.vertical, 50)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .rotation3DEffect(.degrees(rotationDegree), axis: (x: 0, y: 1, z: 0))
                .onAppear {
                    withAnimation(.linear(duration: 18).repeatForever(autoreverses: false)) {
                        rotationDegree += 360
                    }
                }
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Continue")
                    .foregroundColor(.primary)
                    .bold()
                    .frame(width: 170, height: 40)
                    .background(Color.primary.opacity(0.1).cornerRadius(10))
                    .padding(.vertical, 20)
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    showSheet.toggle()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.primary.opacity(0.3))
                        .padding(.trailing, 5)
                        .padding(.top, 5)
                }
            }
        }
    }
}


struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView(showSheet: .constant(true))
    }
}
