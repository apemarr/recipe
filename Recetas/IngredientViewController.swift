//
//  IngredientViewController.swift
//  Recetas
//
//  Created by Alumno on 6/7/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit

class IngredientViewController:UIViewController, UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate{
    @IBOutlet var tableView:UITableView!
    @IBOutlet weak var searchBar:UISearchBar!
    var valuetoPass:String!
    
    
    var filtered:[String]!
    var ingredientes=["Aceite de Oliva","Aceite de soja","Aceite de maiz","Yogur","Champiñones","Setas","Lentejas","Garbanzos","Lechuga","Alcachofa","Acelga","Brecol","Calabaza","Calabacin","Batata","Berro","Brocoli","Cebolla","Judias","Guisantes","Coliflor","Escarola","Arroz","Chocolate","Carne de ternera","Carne de cerdo","Carne de cabra","Carne de vaca","Carne de oveja","Melon","Sandia","Kiwi","Galleta","Limon","Naranja","Platano","Pan","Atun","Anchoa","Calamar","Gamba","Langostino","Pulpo","Cangrejo","Langosta","Mejillon","Camaron","Almeja","Percebe","Sepia","Ostra","Cigala","Bacalao","Bonito","Boqueron","Caballa","Dorada","Lenguado","Merluza","Lubina","Salmon","Sardina","Trucha","Queso Chedar","Queso Parmesano","Sal","Fresa","Harina","Papas","Pimiento verde","Pimiento rojo","Pimienta"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
        searchBar.delegate = self
        filtered=ingredientes
        
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
        if let currentCell=tableView.cellForRow(at: indexPath)! as? IngredientTableViewCell {
        valuetoPass=currentCell.ingrediente?.text
        performSegue(withIdentifier: "detailingredient", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    
        if (segue.identifier=="detailingredient"){
            if let ingredientdetailVC=segue.destination as? IngredientDetailViewController{
                ingredientdetailVC.passedValue=valuetoPass
            }
        }
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return filtered.count
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 44.0
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ingredientCell") as! IngredientTableViewCell
        cell.ingrediente?.text = filtered[indexPath.row]
        
        return cell
        
    }
    func searchBar(_ searchBar: UISearchBar,
                            textDidChange searchText: String){
        // When there is no text, filteredData is the same as the original data
        // When user has entered text into the search box
        // Use the filter method to iterate over all items in the data array
        // For each item, return true if the item should be included and false if the
        // item should NOT be included
        filtered = searchText.isEmpty ? ingredientes : ingredientes.filter { (item: String) -> Bool in
            // If dataItem matches the searchText, return true to include it
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        
        tableView.reloadData()
    }
    
}
 

