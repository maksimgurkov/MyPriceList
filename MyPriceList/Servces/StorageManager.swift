//
//  StorageManager.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import RealmSwift

class StorageManager {
    
    static var shared = StorageManager()
    
    let realm = try! Realm()
    
    private init() {}
    
    func save(_ person: Person) {
        write {
            realm.add(person)
        }
    }
    
    private func write(completion: () -> Void) {
        do {
            try realm.write{
                completion()
            }
        } catch {
            print(error)
        }
    }
}
