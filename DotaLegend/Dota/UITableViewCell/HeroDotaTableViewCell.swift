//
//  HeroDotaTableViewCell.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 3/6/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit
import Kingfisher

class HeroDotaTableViewCell: UITableViewCell {

    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroName: UILabel!
    @IBOutlet weak var heroAttr: UILabel!
    @IBOutlet weak var heroRole: UILabel!
    @IBOutlet weak var heroAtkType: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func bindData(_ heromodel: HeroModelElement) {
        let urlString = "https://api.opendota.com" + (heromodel.img)
        if let url = URL(string: urlString) {
            self.heroImage.kf.setImage(with: url)
        }
        self.heroName.text = heromodel.localizedName
        self.heroAttr.text = heromodel.primaryAttr.rawValue
        self.heroRole.text = heromodel.roles.first.map { $0.rawValue }
        self.heroAtkType.text = heromodel.attackType.rawValue
    }

}
