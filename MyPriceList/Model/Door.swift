//
//  Door.swift
//  MyPriceList
//
//  Created by Максим Гурков on 30.06.2022.
//

import Foundation

class Door {
    let factory: Factory
    let material: Material
    let nameDoor: String
    let descriptionDoor: String
    let price: Int
    let dimensions: String
    let flag: Bool
    
    
    static func forDoors() -> [Door] {
        let door = DataManager.shared.dors
        return door
    }
    
    init(factory: Factory, material: Material, nameDoor: String, descriptionDoor: String, price: Int, dimensions: String, flag: Bool) {
        self.factory = factory
        self.material = material
        self.nameDoor = nameDoor
        self.descriptionDoor = descriptionDoor
        self.price = price
        self.dimensions = dimensions
        self.flag = flag
    }
    
}

enum Factory: String {
    case luxor = "Luxor"
    case onyx = "Оникс"
    case sodrugestvo = "Cодружество"
    case holl = "Холл"
}

enum Material: String {
    case shpone = "Шпон"
    case ecoShpone = "ЭкоШпон"
}
