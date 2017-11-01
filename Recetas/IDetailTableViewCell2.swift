//
//  IDetailTableViewCell2.swift
//  Recetas
//
//  Created by adrian on 28/10/2017.
//  Copyright © 2017 Marcin Adamczyk. All rights reserved.
//

import UIKit


class IDetailTableViewCell2:UITableViewCell{
    @IBOutlet var titulo:UILabel?
    @IBOutlet var imagen:UIImageView?
    //@IBOutlet var autor:UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
