//
//  CategoryVC.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 10/08/2023.
//

import UIKit

class CategoryVC: BaseVC {
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tblView.reloadData()
    }
    
    @IBAction func btnSignOutAction(_ sender: Any) {
        self.moveToLoginVC()
    }
    
    @IBAction func btnAddAction(_ sender: Any) {
        self.moveToAddCategoryVC()
        
    }
}

extension CategoryVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataHandler.shared.getCategoryList()[indexPath.row]
        self.moveToProductListVC(category: category)
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            DataHandler.shared.deleteCategory(for: indexPath.row)
//            self.tblView.reloadData()
            self.tblView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}

extension CategoryVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        DataHandler.shared.getCategoryList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellCategory = tblView.dequeueReusableCell(withIdentifier: "cellMessage")! as! CellCategory
        let category = DataHandler.shared.getCategoryList()[indexPath.row]
        cell.lblName.text = category.name
        return cell
    }
    
}
