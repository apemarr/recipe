//
//  CookingDetailViewController.swift
//  Recetas
//
//  Created by adrian on 26/10/2017.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit
class CookingDetailViewController:UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
    var cocinas:[String] = []
    var arraycocina:[Cocina] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
      
        for item in DataController.shareController.cocinaList{
            if item.tipo.contains(cocinas.joined()){
                arraycocina.append(item)
            }
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.00, green:0.54, blue:1.00, alpha:1.0)
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cdetailCell") as! CDetailTableViewCell
        
        if cocinas.isEmpty{
            cell.titulo?.text=""
            cell.imagen?.image=UIImage.init(named:"")
        }
        else{
           cell.titulo?.text=arraycocina[indexPath.row].titulo
           cell.imagen?.image=UIImage.init(named:arraycocina[indexPath.row].imagen)
        }
        return cell
        
    }
    
}
