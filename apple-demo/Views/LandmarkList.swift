//
//  LandmarkList.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/24.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData:ModelData
    // 是否只显示喜欢的
    @State private var showFavoritesOnly : Bool = false
    
    var filteredLandmarks:[Landmark] {
        modelData.landmarks.filter{landmark in
            // 不显示时全部返回 否则显示喜欢的
            !showFavoritesOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: self.$showFavoritesOnly, label: {
                    Text("我喜欢的")
                })
                ForEach(filteredLandmarks){ landmark in
                    NavigationLink(destination:LandmarkDetail(landmark: landmark)){
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle(Text("导航").foregroundColor(.blue))
            
        }
        
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
