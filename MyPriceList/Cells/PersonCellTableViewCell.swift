//
//  PersonCellTableViewCell.swift
//  MyPriceList
//
//  Created by Максим Гурков on 28.06.2022.
//

import UIKit

class PersonCellTableViewCell: UITableViewCell {


    @IBOutlet weak var fulNamePersonLabel: UILabel!
    @IBOutlet weak var datePersonLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
