//
//  ProductCardCellView.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/26/25.
//

import SwiftUI

struct ProductCardCellView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .bottomTrailing) {
                Image("Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                Image(systemName: "heart")
                    .foregroundColor(.red)
                    .padding(8)
            }
            HStack(spacing: 5) {
                Text("아이폰 13")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text("군자 1동")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text("1,000,000원")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.orange)
        }
        .padding()
    }
}

#Preview {
    ProductCardCellView()
}
