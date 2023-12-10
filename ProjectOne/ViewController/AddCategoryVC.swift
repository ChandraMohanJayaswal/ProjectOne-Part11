//
//  AddCategoryVC.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 09/12/2023.
//

import UIKit

class AddCategoryVC: BaseVC {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtImageName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnSignoutAction(_ sender: Any) {
        self.moveToLoginVC()
    }
    
    @IBAction func btnBackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnAddAction(_ sender: Any) {
        let name = self.txtName.text ?? ""
        let imageName = self.txtImageName.text ?? ""
        
        if name != "" && imageName != "" {
            DataHandler.shared.addCategory(name: name, imageName: imageName)
            self.navigationController?.popViewController(animated: true)
        } else {
            print("Invalid Input")
        }
        
    }
    
}
