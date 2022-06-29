//
//  InfoPersonViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 29.06.2022.
//

import UIKit

class InfoPersonViewController: UIViewController {
    
    var person: Person!

    @IBOutlet weak var viewColorPerson: UIView!
    
    @IBOutlet weak var namePersonLabel: UILabel!
    @IBOutlet weak var surNamePersonLabel: UILabel!
    @IBOutlet weak var patronymicPersonLabel: UILabel!
    @IBOutlet weak var phonePersonLabel: UILabel!
    @IBOutlet weak var addressPersonLabel: UILabel!
    @IBOutlet weak var descriptionPersonLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(person.name) \(person.patronymic)"
        surNamePersonLabel.text = person.surName
        namePersonLabel.text = person.name
        patronymicPersonLabel.text = person.patronymic
        phonePersonLabel.text = person.phone
        addressPersonLabel.text = "\(person.town) \(person.strit) \(person.numberHouse) \(person.body) \(person.numberFlat)"
        descriptionPersonLabel.text = person.personDescription
        viewColorPerson.layer.cornerRadius = 20
        setupLabel()
    }
    
    private func setupLabel() {
        surNamePersonLabel.layer.masksToBounds = true
        surNamePersonLabel.layer.cornerRadius = 8
        namePersonLabel.layer.masksToBounds = true
        namePersonLabel.layer.cornerRadius = 8
        patronymicPersonLabel.layer.masksToBounds = true
        patronymicPersonLabel.layer.cornerRadius = 8
        phonePersonLabel.layer.masksToBounds = true
        phonePersonLabel.layer.cornerRadius = 8
        addressPersonLabel.layer.masksToBounds = true
        addressPersonLabel.layer.cornerRadius = 8
        descriptionPersonLabel.layer.masksToBounds = true
        descriptionPersonLabel.layer.cornerRadius = 8
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
