//
//  ContentView.swift
//  HeroWidget
//
//  Created by backup on 6/4/2565 BE.
//

import SwiftUI

let superHeroArray = [spiderman, captain, groot]

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(superHeroArray) { hero in
                HeroView(hero: hero)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
