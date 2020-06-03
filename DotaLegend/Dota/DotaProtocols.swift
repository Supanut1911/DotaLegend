//
//  DotaProtocols.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright (c) 2563 Supanut LDM. All rights reserved.
//

import UIKit

protocol DotaPresenterInterface: class {
    var view: DotaViewInterface? { get set }
    var interactor: DotaInteractorInterface? { get set }
    var router: DotaRouterInterface? { get set }
    var heroResponse: HeroModel? {get set}
    
    func setHero()
}

protocol DotaViewInterface: class {
    var presenter: DotaPresenterInterface? { get set }
    
    func heroResult()
}

protocol DotaRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol DotaInteractorInterface: class {
    var presenter: DotaInteractorDelegate? { get set }
    func fetchHeroAPI()
}

protocol DotaInteractorDelegate: class {
    func handleResponseData(data: HeroModel) 
}
