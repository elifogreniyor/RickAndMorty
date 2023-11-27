//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Elif Pamuk on 27.11.2023.
//

import Foundation

enum RMCharacterGender : String, Codable {
    //Male, Female, Genderless or unknown
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "Unknown"
}
