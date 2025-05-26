//
//  VScrollView.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/26/25.
//

import SwiftUI

struct VScrollView: View {
    var body: some View {
        ScrollView() {
            VStack {
                ForEach(1..<100) {
                    Text("Item \($0)")
                        .font(.title)
                }
            }

            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    VScrollView()
}
