//
//  ContentView.swift
//  HeroWidget
//
//  Created by backup on 6/4/2565 BE.
//

import SwiftUI

let superHeroArray = [spiderman, captain, groot]

struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.Kamonpan.mac.HeroWidget"))
    
    var heroData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero)
                    .onTapGesture {
                     saveToDefaults(hero: hero)
                }
            }
        }
    }
    
    func saveToDefaults(hero: SuperHero) {
//        print(hero.name)
        
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            print(hero.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
