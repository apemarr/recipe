//
//  ViewController.swift
//  Recetas
//
//  Created by Alumno on 29/6/17.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet var tableView:UITableView!
   
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.tableView.delegate   = self
        self.tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    //CABECERA
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor.red
        
        let label = UILabel.init(frame: CGRect.init(x: 20, y: 10, width: UIScreen.main.bounds.width - 20, height: 56))
        if section==0{
            label.text = "Platos"
        }
        else{
            label.text = "Postres"
        }
        view.addSubview(label)
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
    
    
    
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeTableViewCell
        if indexPath.section==0{
        let imageStr=String.init(format:"food%lu.jpg", indexPath.row+1)
        cell.imagenView?.image=UIImage.init(named:imageStr)
        cell.titleRecipe?.text = DataController.shareController.recetaList[indexPath.row].titulo
        cell.autor?.text=DataController.shareController.recetaList[indexPath.row].autor
        
        }
        if indexPath.section==1{
            let imageStr=String.init(format:"dessert%lu.jpg", indexPath.row+1)
            cell.imagenView?.image=UIImage.init(named:imageStr)
            cell.titleRecipe?.text = DataController.shareController.postreList[indexPath.row].titulo
            cell.autor?.text=DataController.shareController.postreList[indexPath.row].autor
            
        }
        return cell
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

