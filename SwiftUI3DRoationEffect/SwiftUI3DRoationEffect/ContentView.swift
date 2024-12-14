//
//  ContentView.swift
//  SwiftUI3DRoationEffect
//
//  Created by Deep Bhupatkar on 10/12/24.
//apple-wwdc-2024 

import SwiftUI

struct ContentView: View {
    @State private var showSheet: Bool = false

    var body: some View {
        NavigationStack {
            
            ScrollView {
                Spacer()
                Image("apple-wwdc-2024")
                    .resizable()
                    .frame(width: 300, height: 200, alignment: .center)
                    .clipped()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                Button {
                    showSheet.toggle()
                } label: {
                    Label("Preview Photo Frame", systemImage: "eye.fill")
                }
                .padding()
            }
            .navigationTitle("Sheet and 3D Rotation")
            .sheet(isPresented: $showSheet) {
                SheetView(showSheet: $showSheet)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
