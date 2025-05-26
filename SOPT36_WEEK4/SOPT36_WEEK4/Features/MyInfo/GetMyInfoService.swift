//
//  GetMyInfoServiece.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/8/25.
//

import Foundation

final class GetMyInfoService {
    
    static let shared = GetMyInfoService()
    private init() {}
    
    func makeRequest(userId: Int) -> URLRequest? {
        let urlString = "http://api.atsopt-seminar4.site/api/v1/users/me"
        
        guard let url = URL(string: urlString) else { return nil }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("\(userId)", forHTTPHeaderField: "userId")
        return request
    }
    
    func fetchNickname(userId: Int) async throws -> String {
        guard let request = makeRequest(userId: userId) else {
            throw NetworkError.requestEncodingError
        }
                
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.responseError
        }
        
        do {
            let decoded = try JSONDecoder().decode(NicknameResponseWrapper.self, from: data)
            return decoded.data.nickname
        } catch {
            print("디코딩 실패:", error)
            throw NetworkError.responseDecodingError
        }
    }
    
}
