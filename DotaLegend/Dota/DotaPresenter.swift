//
//  DotaPresenter.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright (c) 2563 Supanut LDM. All rights reserved.
//

import Foundation

class DotaPresenter: DotaPresenterInterface {

    weak var view: DotaViewInterface?
    var interactor: DotaInteractorInterface?
    var router: DotaRouterInterface?
    var heroResponse: HeroModel?
    
    
    
    func setHero() {
        self.interactor?.fetchHeroAPI()
    }
    
    
}

extension DotaPresenter: DotaInteractorDelegate {
    func handleResponseData(data: HeroModel) {
        heroResponse = data
        view?.heroResult()
    }
}
