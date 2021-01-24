//
//  ModelData.swift
//  apple-demo
//
//  Created by 王天怡 on 2021/1/23.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}






// 从json中加载数据
// 数据类型必须事先decodable
// 返回数据类型T
func load<T:Decodable>(_ filename: String) -> T {
    let data:Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldent file \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch{
        fatalError("data err")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        debugPrint(error)
        fatalError("decode json err")
    }
}

