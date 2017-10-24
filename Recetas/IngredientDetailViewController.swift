//
//  IngredientDetailViewController.swift
//  Recetas
//
//  Created by Alumno on 19/7/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit
class IngredientDetailViewController:UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
    var passedValue:String!
    var receta:Receta?
    var arrayingrediente:[Receta]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in DataController.shareController.recetaList{
            if item.ingrediente.lowercased().contains(passedValue.lowercased()){
                arrayingrediente.append(item)
            }
        }
        for item2 in DataController.shareController.postreList{
            if item2.ingrediente.lowercased().contains(passedValue.lowercased()){
                arrayingrediente.append(item2)
            }
        }
        self.tableView.delegate   = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.52, green:0.90, blue:0.71, alpha:1.0)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath=tableView.indexPathForSelectedRow!
        let currentCell=tableView.cellForRow(at: indexPath)! as UITableViewCell
        performSegue(withIdentifier: "idetailrecipe", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        if (segue.identifier=="idetailrecipe"){
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let viewController=segue.destination as! DetailViewController
                viewController.arrayingrediente.append(arrayingrediente[indexPath.row])
            }
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return arrayingrediente.count
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 194
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "idetailCell") as! IDetailTableViewCell
        if arrayingrediente.isEmpty{
            cell.titulo?.text=""
            cell.imagen?.image=UIImage.init(named:"")
            cell.autor?.text=""
        }else{
        cell.titulo?.text=arrayingrediente[indexPath.row].titulo
        cell.imagen?.image=UIImage.init(named:arrayingrediente[indexPath.row].imagen)
        cell.autor?.text=arrayingrediente[indexPath.row].autor
        }
        return cell
    }
}


