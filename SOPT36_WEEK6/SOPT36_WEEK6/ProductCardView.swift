//
//  Untitled.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/17/25.
//

import SwiftUI

struct ProductCardView_ZStack: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text("Real 허거덩거덩스").font(.headline)
                    Text("이것참허거덩거덩스한상황인데요").font(.subheadline)
                }
                Spacer() // Spacer라는 빈공간을 주는 코드
            }
            .padding()
            .foregroundColor(.primary)
            .background(Color.primary.colorInvert().opacity(0.75))
        }
    }
}

#Preview {
    ProductCardView_ZStack()
}
