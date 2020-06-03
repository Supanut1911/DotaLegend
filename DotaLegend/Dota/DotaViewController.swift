//
//  DotaViewController.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright (c) 2563 Supanut LDM. All rights reserved.
//

import UIKit

class DotaViewController: UIViewController {
    
    var presenter: DotaPresenterInterface?
    var responseHeroData: HeroModel?
    
    @IBOutlet weak var heroTableView: UITableView!
    @IBOutlet weak var cellStack: UIStackView! {
       didSet{
            self.cellStack.layer.shadowColor = UIColor.black.cgColor
            self.cellStack.layer.shadowOffset = CGSize(width: 0, height: 0)
            self.cellStack.layer.shadowOpacity = 0.6
            self.cellStack.layer.shadowRadius = 2
        }
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchData()
    }
    
    // MARK: - Interactor
    func fetchData() {
        presenter?.setHero()
        
    }
    
    // MARK: - UI
    func setupUI() {
    }
    
    // MARK: - Actions
}

extension DotaViewController: DotaViewInterface {
    func heroResult() {
        self.responseHeroData = self.presenter?.heroResponse
        print(responseHeroData)
        self.heroTableView.reloadData()
    }
}

extension DotaViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return responseHeroData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = heroTableView.dequeueReusableCell(withIdentifier: "HeroDotaCell", for: indexPath) as? HeroDotaTableViewCell
        
        cell?.bindData((responseHeroData?[indexPath.row])!)
        
        return cell!
    }
    
    
}
