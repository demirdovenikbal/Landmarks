//
//  ModelData.swift
//  Landmarks
//
//  Created by Ikbal Demirdoven on 2024-09-22.
//

import Foundation

@Observable
class ModelData {
    var landmarks : [Landmark] = loadData("landmarkData.json")
}

func loadData<T: Decodable>(_ fileName : String) -> T {
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    let data : Data
    do {
        data = try Data(contentsOf: file)
    }  catch {
        fatalError("Couldn't load \(fileName) from main bundle.")
    }
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n(error)")
    }
}
