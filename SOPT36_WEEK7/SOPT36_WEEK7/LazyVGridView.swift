//
//  LazyVGridView.swift
//  SOPT36_WEEK7
//
//  Created by LEESOOYONG on 5/24/25.
//

import SwiftUI

struct LazyVGridView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(1...20, id: \.self) {
                    value in CardView(index: value)
                }
            }
        }
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else {
            return "?"
        }
        return String(Character(scalar))
    }
}

struct CardView: View {
    var index: Int
    var body: some View {
        VStack {
            Rectangle().fill(.orange)
                .cornerRadius(10)
                .frame(width: 100, height: 100)
                .padding()
            Text("아이템 \(index)")
                .padding()
        }
        .background {
            Rectangle().fill(.gray)
                .cornerRadius(10)
        }
    }
}

#Preview {
    LazyVGridView()
}
