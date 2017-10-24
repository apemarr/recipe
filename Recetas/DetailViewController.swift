//
//  DetailViewController.swift
//  Recetas
//
//  Created by Alumno on 13/7/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit

class DetailViewController:UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
    var passedValue:String!
    var receta:Receta?
    var arrayingrediente:[Receta]=[]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:1.00, green:0.54, blue:0.00, alpha:1.0)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell") as! DetailTableViewCell
        if arrayingrediente.isEmpty{
        cell.titulo?.text=receta?.titulo
        if let image=receta?.imagen{
            cell.imagen?.image=UIImage.init(named:image)
        }
        cell.ingredientes?.text=receta?.ingrediente
        cell.preparacion?.text=receta?.preparacion
        }
        else{
            cell.titulo?.text=arrayingrediente[indexPath.row].titulo
            cell.imagen?.image=UIImage.init(named:arrayingrediente[indexPath.row].imagen)
            cell.ingredientes?.text=arrayingrediente[indexPath.row].ingrediente
            cell.preparacion?.text=arrayingrediente[indexPath.row].preparacion
        }
        return cell
        
    }
    
}

