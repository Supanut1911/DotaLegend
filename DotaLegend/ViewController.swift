//
//  ViewController.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var heroModel: HeroModel?
    
    @IBOutlet weak var dotaTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchingHeroData()
    }
    
    func fetchingHeroData() {
        Networking.fetchHero { (result) in
            switch result {
            case .success(let model):
                self.heroModel = model
                self.dotaTableView.reloadData()
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroModel?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dotaTableView.dequeueReusableCell(withIdentifier: "DotaCell", for: indexPath) as? DotaCell
        
        cell?.loadView(self.heroModel?[indexPath.row])

        return cell!
    }
    
    
}
