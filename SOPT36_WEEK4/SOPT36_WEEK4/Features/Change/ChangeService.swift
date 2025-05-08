//
//  Untitled.swift
//  SOPT36_WEEK4
//
//  Created by LEESOOYONG on 5/8/25.
//

import Foundation

final class ChangeService {
    
    static let shared = ChangeService()
    private init() {}
    
    func makeRequestBody(nickname: String) -> Data? {
        do {
            let data = ChangeRequestBody(nickname: nickname)
            let jsonEncoder = JSONEncoder()
            let requestBody = try jsonEncoder.encode(data)
            return requestBody
        } catch {
            print(error)
            return nil
        }
    }
    
    
    func makeRequest(userId: Int, body: Data?) -> URLRequest {
        let url = URL(string: "http://api.atsopt-seminar4.site/api/v1/users")!
        var request = URLRequest(url: url)
        request.httpMethod = "PATCH"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("\(userId)", forHTTPHeaderField: "userId")
        
        if let body = body {
            request.httpBody = body
        }
        
        return request
    }
    
    func PatchNickname(userId: Int, nickname: String) async throws -> ChangeResponseBody {
        
        guard let body = makeRequestBody(nickname: nickname)
        else {
            throw NetworkError.requestEncodingError
        }
        
        let request = self.makeRequest(userId: userId, body: body)
        let (data, response) = try await URLSession.shared.data(for: request)
        dump(request)
        guard let httpResponse = response as? HTTPURLResponse else {
            throw NetworkError.responseError
        }
        dump(response)
        guard(200...299).contains(httpResponse.statusCode) else {
            throw configureHTTPError(errorCode: httpResponse.statusCode)
        }
        do {
            let decoded = try JSONDecoder().decode(ChangeResponseBody.self, from: data)
            return decoded
        } catch {
            print("디코딩 실패:", error)
            throw NetworkError.responseDecodingError
        }
    }
    private func configureHTTPError(errorCode: Int) -> Error {
        return NetworkError(rawValue: errorCode)
        ?? NetworkError.unknownError
    }
}
