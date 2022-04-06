//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by backup on 6/4/2565 BE.
//

import SwiftUI

struct CircularImageView: View {
    
    var image: Image
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 5)) //stroke to leave just bounder
            .shadow(radius: 15)
        
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("groot"))
    }
}
