//
//  ChatListSimpleView.swift
//  SOPT36_WEEK6
//
//  Created by LEESOOYONG on 5/17/25.
//

import SwiftUI

struct ChatListSimpleView: View {
    let chats: [ChatModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("채팅")
                .font(.title)
                .fontWeight(.bold)
                .padding([.top, .horizontal])
            
            List(chats) { chat in
                ChatRowView(chat: chat)
            }
            .listStyle(PlainListStyle())
        }
    }
}

#Preview {
    ChatListSimpleView(chats: chatDummy)
}
