//
//  ProfileViewWithOverlay.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/26/25.
//


import SwiftUI

struct ProfileViewWithOverlay: View {
    var body: some View {
        VStack {
            Image("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(ProfileDetail(), alignment: .bottom)
        }
    }
}


struct ProfileDetail: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Real 허거덩거덩스")
                    .font(.headline)
                Text("이것참허거덩거덩스한상황인데요")
                    .font(.subheadline)
            }
            Spacer()
        }
        .padding()
        .foregroundColor(.primary)
        .background(Color.primary
                        .colorInvert()
                        .opacity(0.75))
    }
}

#Preview {
    ProfileViewWithOverlay()
}
