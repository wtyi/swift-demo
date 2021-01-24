//
//  CircleImage.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/23.
//

import SwiftUI

struct CircleImage: View {
    
    var image:Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 200, height: 200, alignment:  .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 10))
            .shadow(radius: 10,x:1 )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("chilkoottrail"))
    }
}
    
