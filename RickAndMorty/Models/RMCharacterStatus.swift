//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Elif Pamuk on 27.11.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    // 'Alive', 'Dead' or 'Unknown'
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
