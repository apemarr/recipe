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
        /*
        var recipes = "dsakdklsaj dklajs dklajs dkljas ldkj"
        var recipeSelected = "dsjahdjk"
        
        if recipes.lowercased().contains(recipeSelected.lowercased()) == true {
            
        }
        */
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
        
        
    }
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 539
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "idetailCell") as! IDetailTableViewCell
        //cell.titulo?.text=arrayingrediente[titulo]
        return cell
    }
    
}


