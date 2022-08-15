//
//  product.swift
//  Shopping App
//
//  Created by Kristoffer Baumgarten on 13/08/2022.
//

import Foundation

struct productList: Codable {
    let result: [Product]
}

struct Product: Codable{
    let id: Int
    let name: String?
    let price: [String]
    let colour: String?
    let colourWayId: Int?
    let brandName: String?
    let hasVariantColours: Bool?
    let hasMultiplePrices: Bool?
    let groupId: String?
    let productCode: Int?
    let productType: String?
    let url: String?
    let imageUrl: String?
    
}

struct Price: Codable{
    let current: [Current]
    let Previous:[Previous]
    let Rrp: [Rrp]
    let isMarkedDown:Bool?
    let isOutletPrice: Bool?
    let currency:String?
}


struct Current: Codable{
    let value: String?
    let text: String?
}

struct Previous: Codable{
    let value: String?
    let text: String?
}

struct Rrp: Codable{
    let value: String?
    let text: String?
}
