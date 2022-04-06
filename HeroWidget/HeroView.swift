//
//  HeroView.swift
//  HeroWidget
//
//  Created by backup on 6/4/2565 BE.
//

import SwiftUI

struct HeroView: View {
    
    let hero: SuperHero
    
    var body: some View {
        HStack {
            CircularImageView(image: Image(hero.image))
                .frame(width: 100, height: 100, alignment: .center).padding()
            
            Spacer()
            
            VStack {
                Text(hero.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                .foregroundColor(.black)
                
                Text(hero.realName)
                    .fontWeight(.bold)
                .foregroundColor(.gray)
            }.padding()
            
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: groot)
    }
}
