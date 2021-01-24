//
//  LandmarkDetail.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData:ModelData
    var landmark:Landmark
    
    var landmarkIndex:Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height:300)
            
            CircleImage(image: landmark.image)
                .offset(y:-130)
                .padding(.bottom,-130)
            
            VStack(alignment:.center){
                HStack{
                    Text(landmark.name)
                        .fontWeight(.bold)

                        .foregroundColor(.green)
                        .font(.title)
                        .padding()
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(landmark.state)
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                .padding()
            }
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        LandmarkDetail(landmark:landmarks[0]).environmentObject(ModelData())
    }
}
