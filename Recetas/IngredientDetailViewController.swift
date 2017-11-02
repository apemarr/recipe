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
    var arraycocina:[Cocina]=[]

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
        for item3 in DataController.shareController.cocinaList{
            if item3.ingrediente.lowercased().contains(passedValue.lowercased()){
                arraycocina.append(item3)
            
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
        performSegue(withIdentifier: "idetailrecipe", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){

        if (segue.identifier=="idetailrecipe"){
            if let indexPath = self.tableView.indexPathForSelectedRow{
                let section=indexPath.section
                let viewController=segue.destination as! DetailViewController
                if section==0{
                    viewController.arrayingrediente.append(arrayingrediente[indexPath.row])
                }
                else{
                    viewController.arraycocina.append(arraycocina[indexPath.row])
                }
            }
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        let numberofrows:[Int]=[arrayingrediente.count,arraycocina.count]
        var rows: Int = 0
        if section < numberofrows.count {
            rows = numberofrows[section]
        }
        
        return rows
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 194
    }
    
  func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "idetailCell") as! IDetailTableViewCell
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "idetailCell2") as! IDetailTableViewCell2

    if indexPath.section==0{
        cell.titulo?.text=arrayingrediente[indexPath.row].titulo
        cell.imagen?.image=UIImage.init(named:arrayingrediente[indexPath.row].imagen)
        cell.autor?.text=arrayingrediente[indexPath.row].autor
       return cell
    }
    if indexPath.section==1{
        cell2.titulo?.text=arraycocina[indexPath.row].titulo
        cell2.imagen?.image=UIImage.init(named:arraycocina[indexPath.row].imagen)
        return cell2
    }
    return cell
}
}


