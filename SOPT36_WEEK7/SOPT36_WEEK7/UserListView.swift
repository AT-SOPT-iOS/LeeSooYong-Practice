//
//  UserListView.swift
//  SOPT36_WEEK7
//
//  Created by LEESOOYONG on 5/24/25.
//

import SwiftUI

struct User: Identifiable, Hashable{
    let id: UUID = UUID()
    let name: String
    let age: Int
}

struct UserListView: View {
    
    let users = [
        User(name: "김가현", age: 29),
        User(name: "이세민", age: 25),
        User(name: "김가현", age: 36)
    ]

    var body: some View {
        NavigationStack {
            List(users) { user in
                NavigationLink(value: user) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                        VStack(alignment: .leading) {
                            Text(user.name)
                            Text("나이: \(user.age)")
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("사용자 목록")
            .navigationDestination(for: User.self) { selectedUser in
                UserDetailView(user: selectedUser)
            }
        }
    }
}

#Preview {
    UserListView()
}
