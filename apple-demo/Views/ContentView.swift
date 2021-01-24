//
//  ContentView.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View  {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}


