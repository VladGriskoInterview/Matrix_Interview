//
//  Country.swift
//  Matrix_Interview_Main
//
//  Created by hyperactive on 06/01/2021.
//

import Foundation

struct Country : Codable {
    
    let name: String
    let nativeName: String
    let area: Double
    let alphaCode: String
    let borders: [String]
    
    init(name: String, nativeName: String, area: Double, alphaCode: String, borders: [String] ) {
        self.name = name
        self.nativeName = nativeName
        self.area = area
        self.alphaCode = alphaCode
        self.borders = borders
    }
}
