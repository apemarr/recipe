//
//  IngredientViewController.swift
//  Recetas
//
//  Created by Alumno on 6/7/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit

class IngredientViewController:UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
    @IBOutlet weak var searchBar:UISearchBar!
    
    var searchActive : Bool = false
    var filtered:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
        searchBar.delegate = self as! UISearchBarDelegate
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
        
        
    }
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return 8
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
        var ingredientes=["Aceite de Oliva","Arroz","Chocolate","Carne de ternera","Carne de cerdo","Queso Chedar","Queso Parmesano","Sal"]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ingredientCell") as! IngredientTableViewCell
        cell.ingrediente?.text = ingredientes[indexPath.row]
        
        return cell
        
    }
    func searchBarTextDidBeginEditing(searchBar: UISearchBar) {
        searchActive = true;
    }
    
    func searchBarTextDidEndEditing(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchActive = false;
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        searchActive = false;
    }
    func searchBar(_ searchBar: UISearchBar,
                            textDidChange searchText: String){
        
    }
 
}
