//
//  DotaInteractor.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright (c) 2563 Supanut LDM. All rights reserved.
//

import Foundation
import Alamofire

class DotaInteractor: DotaInteractorInterface {
    weak var presenter: DotaInteractorDelegate?
    lazy var operationQueue = OperationQueue()
    
    let url = "https://api.opendota.com/api/heroStats"
    
    func fetchHeroAPI() {
        

        AF.request(url).responseDecodable(of: HeroModel.self, queue: .main, decoder: JSONDecoder()) { (response) in
            switch response.result {
            case .success(let heroData):
                self.presenter?.handleResponseData(data: heroData)
            case .failure(let error):
                print("Cant fetch :\(error)")
            }
        }
    }
    
}
