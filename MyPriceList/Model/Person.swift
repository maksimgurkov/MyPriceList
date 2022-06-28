//
//  Person.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import Foundation
import RealmSwift

class Person: Object {
    @Persisted var name = ""
    @Persisted var patronymic = ""
    @Persisted var surName = ""
    @Persisted var phone = ""
    @Persisted var town = ""
    @Persisted var strit = ""
    @Persisted var numberHouse = ""
    @Persisted var body = ""
    @Persisted var numberFlat = ""
    @Persisted var personDescription = ""
    @Persisted var data = Date()
    
}
