//
//  ChangeResponseBody.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/8/25.
//

import Foundation

struct ChangeResponseBody: Codable {
    let success: Bool
    let code: String
    let message: String
    let data: String?
}
