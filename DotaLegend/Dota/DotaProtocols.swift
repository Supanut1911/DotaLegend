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
}

protocol DotaViewInterface: class {
    var presenter: DotaPresenterInterface? { get set }
}

protocol DotaRouterInterface: class {
    var viewController: UIViewController? { get set }
    static func createModule() -> UIViewController
}

protocol DotaInteractorInterface: class {
    var presenter: DotaInteractorDelegate? { get set }
}

protocol DotaInteractorDelegate: class {
}
