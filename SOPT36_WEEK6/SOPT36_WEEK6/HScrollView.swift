//
//  HScrollView.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/26/25.
//

import SwiftUI

struct HScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
               ForEach(0..<10) {
                    Text("숫자 \($0)")
                        .foregroundColor(.black)
                        .font(.largeTitle)
                        .background(Color.yellow)
                }
            }
            .frame(maxHeight: .infinity)
        }
    }
}

#Preview {
    HScrollView()
}
