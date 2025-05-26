//
//  ReigsterResponseBody.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/3/25.
//

import UIKit

struct RegisterResponseWrapper: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: RegisterResponseBody
}

struct RegisterResponseBody: Codable {
    let userId: Int
    let nickname: String
}
