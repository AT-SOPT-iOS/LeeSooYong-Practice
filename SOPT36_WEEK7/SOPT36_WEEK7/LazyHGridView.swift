//
//  LazyHGridView.swift
//  SOPT36_WEEK7
//
//  Created by LEESOOYONG on 5/24/25.
//

import SwiftUI

struct LazyHGridView: View {
    let rows = [GridItem(.fixed(100)), GridItem(.fixed(100))]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 15) {
                ForEach(1...20, id: \.self) { value in
                    ZStack {
                        Rectangle().fill(.orange)
                            .cornerRadius(10)
                            .frame(width: 100)
                        Text("\(value)").foregroundStyle(.white).font(.headline)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyHGridView()
}
