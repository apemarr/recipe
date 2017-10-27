//
//  CookingViewController.swift
//  Recetas
//
//  Created by Alumno on 11/7/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit

class CookingViewController:UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
    var valuetoPass:String!
    var cocinas=["Americana","Griega","Italiana"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.52, green:0.71, blue:0.90, alpha:1.0)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "cookingdetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if (segue.identifier=="cookingdetail"){
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let viewController=segue.destination as! CookingDetailViewController
                viewController.cocinas.append(cocinas[indexPath.row])
            }
        }
    }
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 245
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cookingCell") as! CookingTableViewCell
        cell.cocina?.text = cocinas[indexPath.row]
        let imageStr=String.init(format:"cook%lu.jpg", indexPath.row+1)
        cell.imagenCocina?.image=UIImage.init(named:imageStr)
        return cell
        
    }
    
}
