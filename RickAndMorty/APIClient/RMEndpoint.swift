//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Elif Pamuk on 27.11.2023.
//

import Foundation

/// Represents unique API endpoint
    @frozen enum RMEndpoint : String {
        ///Endpoint to get character, location and episode info
        case character // "character"
        case location // "location
        case episode // "episode"
    }

