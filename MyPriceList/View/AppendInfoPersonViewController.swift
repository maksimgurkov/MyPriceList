//
//  AppendInfoPersonViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import UIKit
import RealmSwift

class AppendInfoPersonViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surNameTextField: UITextField!
    
    @IBOutlet weak var savePersonButton: UIButton!
    
    private var person: Results<Person>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        savePersonButton.layer.cornerRadius = 10
    }
    
    @IBAction func closeViewButton(_ sender: Any) {
        dismiss(animated: true)
    }
    

    @IBAction func savePersonButtonAction() {
        let person = Person()
        guard let name = nameTextField.text, !name.isEmpty else { return }
        guard let surName = surNameTextField.text, !surName.isEmpty else { return }
        person.name = name
        person.surName = surName
        StorageManager.shared.save(person)
        dismiss(animated: true)
        
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
