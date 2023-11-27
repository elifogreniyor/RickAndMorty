//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Elif Pamuk on 27.11.2023.
//

import Foundation
////Object that represent a singleton API Call
final class RMRequest {
    //https://rickandmortyapi.com/api/character/2  -> baseURL/api/endpoint/additionalpath
    
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api" //BaseUrl
    }
    
    let endpoint : RMEndpoint
    let pathComponents : [String]
    let queryParameters: [URLQueryItem]
    
    public init(endpoint: RMEndpoint, pathComponents: [String] = [] , queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents //Path Components
        self.queryParameters = queryParameters //Query Parameters -> ?name=rick&status=alive
    }
}
