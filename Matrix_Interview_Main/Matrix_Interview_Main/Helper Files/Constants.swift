//
//  Constants.swift
//  Matrix_Interview_Main
//
//  Created by hyperactive on 06/01/2021.
//

import Foundation

enum Constants {
    
    static let url = "https://restcountries.eu/rest/v2/all"
    static let cacheDirName = "countries"
    static let cellIdentifier = "country"
    
    enum ErrorMassages {
        static let connectionFailed = "Please check device connection"
    }
    
    enum Keys {
        static let name = "name"
        static let nativeName = "nativeName"
        static let area = "area"
        static let borders = "borders"
        static let alphaCode = "alpha3Code"
    }
    
    enum ButtonTitles {
        static let aToZ = "A - Z"
        static let zToA = "Z - A"
        static let areaAsc = "Area Ascending"
        static let areaDesc = "Area Descending"
    }
}
