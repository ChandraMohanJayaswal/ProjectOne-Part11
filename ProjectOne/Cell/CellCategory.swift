//
//  CellCategory.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 04/12/2023.
//

import UIKit

class CellCategory: UITableViewCell {

    @IBOutlet weak var imgIcon: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
