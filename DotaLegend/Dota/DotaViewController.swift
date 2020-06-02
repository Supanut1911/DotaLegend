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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        fetchData()
    }
    
    // MARK: - Interactor
    func fetchData() {
    }
    
    // MARK: - UI
    func setupUI() {
    }
    
    // MARK: - Actions
}

extension DotaViewController: DotaViewInterface {
}
