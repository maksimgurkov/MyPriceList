//
//  MaterialDoorsTableViewController.swift
//  MyPriceList
//
//  Created by Максим Гурков on 30.06.2022.
//

import UIKit

class MaterialDoorsTableViewController: UITableViewController {
    
    var materialDoor: [Door]!
    
    private var materialDoors: [String] = []
    private var listDoors: [Door] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Выбор покрытия"
        forMaterialDoor()
    }
    
    private func forMaterialDoor() {
        for material in materialDoor {
            if !materialDoors.contains(material.material.rawValue) {
                materialDoors.append(material.material.rawValue)
            }
        }
    }
    
    private func forListDoors() {
        guard let index = tableView.indexPathForSelectedRow else { return }
        listDoors = []
        for door in materialDoor {
            if door.material.rawValue == materialDoors[index.row] {
                listDoors.append(door)
            }
        }
    }
    
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let listDoorVC = segue.destination as? ListDoorsTableViewController else { return }
        forListDoors()
        listDoorVC.listDoors = listDoors
    }
    
    
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materialDoors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "materialCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let material = materialDoors[indexPath.row]
        content.text = material
        cell.contentConfiguration = content
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
