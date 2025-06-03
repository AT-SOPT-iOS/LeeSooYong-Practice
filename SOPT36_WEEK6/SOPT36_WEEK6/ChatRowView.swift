//
//  ChatRowView.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/17/25.
//

import SwiftUI

struct ChatRowView: View {
    let chat: ChatModel

    var body: some View {
        HStack(alignment: .center) {
            Image(chat.profileImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
                .clipShape(Circle())

            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(chat.name)
                        .font(.headline)
                    Text(chat.location)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Text(chat.message)
                    .font(.subheadline)
                    .foregroundColor(.primary)
            }
            
            Spacer()
            
            Image(chat.thumbnailImageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 48, height: 48)
                .clipShape(Rectangle())
        }
        .padding(.vertical, 8)
    }
}


