//
//  FavoriteButton.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/25.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet:Bool
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? .yellow : .gray)
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
