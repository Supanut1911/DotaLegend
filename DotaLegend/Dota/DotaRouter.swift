//
//  DotaRouter.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright (c) 2563 Supanut LDM. All rights reserved.
//

import UIKit

class DotaRouter: DotaRouterInterface {
    weak var viewController: UIViewController?

    static func createModule() -> UIViewController {
        let viewController = mainstoryboard.instantiateViewController(withIdentifier: "DotaViewController") as? DotaViewController
        let presenter: DotaPresenterInterface & DotaInteractorDelegate = DotaPresenter()
        let interactor: DotaInteractorInterface = DotaInteractor()
        let router: DotaRouterInterface = DotaRouter()

        viewController?.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        router.viewController = viewController
        return viewController ?? UIViewController()
    }
    
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name: "Dota", bundle: Bundle.main)
    }
}
