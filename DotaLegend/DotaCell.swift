//
//  DotaCell.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit
import Kingfisher

class DotaCell: UITableViewCell {

    @IBOutlet weak var heroNameLabel: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroAtkTpyeLabel: UILabel!
    @IBOutlet weak var heroRoleLabel: UILabel!
    @IBOutlet weak var heroAttrLabel: UILabel!
    
    var heroName: String = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func loadView(_ element: HeroModelElement?) {
//        print(element?.name)
        self.heroNameLabel.text = element?.localizedName
        self.heroAttrLabel.text = element?.primaryAttr.rawValue
        self.heroAtkTpyeLabel.text = element?.attackType.rawValue
        self.heroRoleLabel.text = (element?.roles.first).map { $0.rawValue }
        
        let urlString = "https://api.opendota.com" + (element?.img)!
        if let url = URL(string: urlString) {
            self.heroImageView.kf.setImage(with: url)
        }
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
