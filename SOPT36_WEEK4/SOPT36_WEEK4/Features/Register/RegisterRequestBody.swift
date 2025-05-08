//
//  RegisterRequestBody.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/3/25.
//

import UIKit

// 회원가입 request body
struct RegisterRequestBody: Codable {
    let loginId: String
    let password: String
    let nickname: String
}
