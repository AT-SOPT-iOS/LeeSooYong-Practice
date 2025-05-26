//
//  NameChangeView.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/17/25.
//

import SwiftUI

struct NameChangeView: View {
    @Binding var name: String

    var body: some View {
        Button("이름 바꾸기") {
            name = "나연"
        }
    }
}
