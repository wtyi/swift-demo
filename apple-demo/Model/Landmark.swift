//
//  Landmark.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/23.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark:Hashable ,Codable,Identifiable {
    var id:Int
    var name: String
    var park: String
    var state: String
    private var favorite:Bool?
//    var description: String
    
    var isFavorite:Bool {
        get{
            if let i = self.favorite{
                return i
            }else {
                return false
            }
        }
        set{favorite = newValue}
    }
    
    
    private var imageName:String
    var image: Image {
        Image(imageName)
    }
    
    
    private var coordinates: Coordinates
    // 计算坐标
    var locationCoordinate:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    // hash 可hash计算
    // codable json序列
    struct Coordinates: Hashable,Codable {
        var latitude: Double
        var longitude: Double
    }
}
