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
    
    //API Constants
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api" //BaseUrl
    }
    
    //Desired Endpoint
    private let endpoint : RMEndpoint
    //Path Component for API, if any
    private let pathComponents : [String]
    //Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    ///Constructed URL for the API Request in string format
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach {
                string += "/\($0)"
            }
        }
        if !queryParameters.isEmpty {
            string += "?"
           //name=value&name=value
            let argumentString = queryParameters.compactMap {
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }.joined(separator: "&")
            string += argumentString
        }
        return string
    }
    //Computed & Constructed API Url
    public var url: URL? {
        return URL(string: urlString)
    }
    //Desired Http method
    public let httpMethod = "GET"
    
    ///Construct request
    ///Parameters:
    ///- endpoint : Target endpoint
    ///- pathComponents : Collection of Path components
    ///- queryParameters : Collection of query parameters
    public init(endpoint: RMEndpoint, pathComponents: [String] = [] , queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents //Path Components
        self.queryParameters = queryParameters //Query Parameters -> ?name=rick&status=alive
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}
