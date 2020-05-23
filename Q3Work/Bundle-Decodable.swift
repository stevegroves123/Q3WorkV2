//
//  Bundle-Decodable.swift
//  Q3Work
//
//  Created by steve groves on 07/05/2020.
//  Copyright © 2020 steve groves. All rights reserved.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [equipment] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([equipment].self, from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        let sortedNo = loaded.sorted {$0.EquipmentNo > $1.EquipmentNo}
        
        return sortedNo
    }
}
/*
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in bundle")
        }
        
        return loaded
    }
}
*/
