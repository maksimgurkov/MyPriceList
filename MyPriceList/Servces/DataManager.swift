//
//  DataManager.swift
//  MyPriceList
//
//  Created by Максим Гурков on 30.06.2022.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let dors = [
        Door(factory: .luxor,
             material: .shpone,
             nameDoor: "Венеция",
             descriptionDoor: "",
             price: 5000,
             dimensions: "550*1900",
             flag: false),
        Door(factory: .onyx,
             material: .shpone,
             nameDoor: "ДПГ",
             descriptionDoor: "",
             price: 5000,
             dimensions: "600*2000",
             flag: false),
        Door(factory: .luxor,
             material: .ecoShpone,
             nameDoor: "Лу-21",
             descriptionDoor: "",
             price: 5000,
             dimensions: "700*2000",
             flag: false),
        Door(factory: .sodrugestvo,
             material: .ecoShpone,
             nameDoor: "Эко-2",
             descriptionDoor: "",
             price: 5000,
             dimensions: "550*1900",
             flag: false),
        Door(factory: .holl,
             material: .ecoShpone,
             nameDoor: "Эко",
             descriptionDoor: "",
             price: 5000,
             dimensions: "550*1900",
             flag: false)
    ]
    
    private init() {}
}
