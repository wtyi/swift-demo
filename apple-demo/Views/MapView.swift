//
//  MapView.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/23.
//

import SwiftUI
import MapKit


struct MapView: View {
    var coordinate:CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868), span: MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 3.0))
    
    var body: some View{
        Map(coordinateRegion: $region)
            
            .onAppear{
                setRegin(coordinate)
            }
    }
    
    private func setRegin(_ coordinate:CLLocationCoordinate2D){
        region = MKCoordinateRegion(center:coordinate,span:MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868))
    }
}
