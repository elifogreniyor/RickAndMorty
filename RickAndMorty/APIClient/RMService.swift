//
//  RMService.swift
//  RickAndMorty
//
//  Created by Elif Pamuk on 27.11.2023.
//

import Foundation


/// Primary API service object to get Rick and Morty Data (Command + Option + Backslash)
final class RMService {
    ////Shared singleton instance
    static let shared = RMService()
    
    ////Privatized Constructor
    private init() {}
    
    ////Send Rick and Morty API Call
    /// - Parameters:
    /// - request: Request instance
    /// - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping (Result<String, Error>) -> Void){
        
    }
}
