//
//  NickNameListResponse.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/3/25.
//

import Foundation

struct NicknameListResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: NickNameListResponseList
}

struct NickNameListResponseList: Codable {
    let nicknameList: [String]
}

struct Nickname: Codable {
    let nickname: String
}
