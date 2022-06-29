//
//  PersonsTableViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import UIKit
import RealmSwift

class PersonsTableViewController: UITableViewController {
    
    private var persons: Results<Person>!

    override func viewDidLoad() {
        persons = StorageManager.shared.realm.objects(Person.self)
        super.viewDidLoad()
        title = "Клиенты"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if persons.count != 0 {
            return persons.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! PersonCellTableViewCell
        let person = persons[indexPath.row]
        cell.fulNamePersonLabel.text = "\(person.name) \(person.patronymic)"
        cell.surNamePersonLabel.text = person.surName
        cell.fulAddressPersonLabel.text = "\(person.town) \(person.strit) \(person.numberHouse) \(person.body) \(person.numberFlat)"
        cell.datePersonLabel.text = "\(person.data)"
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let person = persons[indexPath.row]
        
        if editingStyle == .delete {
            StorageManager.shared.delete(person)
        }
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

}
