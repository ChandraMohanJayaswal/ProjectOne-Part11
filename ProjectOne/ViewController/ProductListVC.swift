//
//  ProductListVC.swift
//  ProjectOne
//
//  Created by Chandra Jayaswal on 09/12/2023.
//

import UIKit

class ProductListVC: BaseVC {
    @IBOutlet weak var lblHeader: UILabel!
    @IBOutlet weak var tblView: UITableView!

    var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblHeader.text = category?.name ?? ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.tblView.reloadData()
    }
    
    @IBAction func btnSignoutAction(_ sender: Any) {
        self.moveToLoginVC()
    }
    
    @IBAction func btnBackAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func btnAddAction(_ sender: Any) {
        self.moveToAddProductVC(category: self.category)
    }
}

extension ProductListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.category?.products.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CellCategory = tblView.dequeueReusableCell(withIdentifier: "cellProduct")! as! CellCategory
        let product = self.category?.products[indexPath.row]
        cell.lblName.text = "\(product?.name ?? "NA"), price \(product?.price ?? 0), unit \(product?.pricePerUnit ?? "NA")" 
        return cell
    }
    
}

