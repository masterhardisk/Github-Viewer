//
//  Api.swift
//  Github Viewer
//
//  Created by MasterHardisk on 15/11/24.
//
import Foundation

class Api {
    internal func fetchData<T: Codable>(from: ApiEndpoint, as type: T.Type) async throws -> T {
        let (data, response) = try await URLSession.shared.data(from: from.url)
        try handleErrorFrom(response)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(T.self, from: data)
    }
    
    private func handleErrorFrom(_ response: URLResponse) throws {
        guard let httpResponse = response as? HTTPURLResponse else { throw ApiError.networkError }
        if httpResponse.statusCode == 404 {
            throw ApiError.notFound
        }
    }
}
