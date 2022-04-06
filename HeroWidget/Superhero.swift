//
//  Superhero.swift
//  HeroWidget
//
//  Created by backup on 6/4/2565 BE.
//

import Foundation

struct SuperHero: Identifiable, Codable {
    
    let image: String
    let name: String
    let realName: String
    
    var id: String {image}
    
}

let spiderman = SuperHero(image: "spiderman", name: "Spiderman", realName: "Peter Parker")

let captain = SuperHero(image: "captain", name: "Captain America", realName: "Steve Rojer")

let groot = SuperHero(image: "groot", name: "Groot", realName: "Groot")
