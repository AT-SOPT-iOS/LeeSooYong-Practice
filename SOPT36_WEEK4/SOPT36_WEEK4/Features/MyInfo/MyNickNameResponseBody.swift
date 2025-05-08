//
//  MyNickNameResponseBody.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/8/25.
//

import Foundation

struct NicknameResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: NickNameResponseBody
}

struct NickNameResponseBody: Codable {
    let nickname: String
}
