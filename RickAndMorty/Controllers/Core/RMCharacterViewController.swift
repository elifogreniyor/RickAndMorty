//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Elif Pamuk on 27.11.2023.
//

import UIKit

/// - Controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(
            endpoint: .character,
            //pathComponents: ["1"],
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]    
        )
        print(request.url)
        
        RMService.shared.execute(request, excepting: RMCharacter.self) { result in
            switch result {
            case .success(<#T##RMCharacter#>)
            }
        }
    }
}
