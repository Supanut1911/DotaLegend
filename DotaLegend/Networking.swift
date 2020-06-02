//
//  Networking.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation
import Alamofire

class Networking {
    
    static let url = "https://api.opendota.com/api/heroStats"
    
    static func fetchHero(completion: @escaping (Result<HeroModel, Error>) -> Void) {
        AF.request(url).responseDecodable(of: HeroModel.self, queue: .main, decoder: JSONDecoder()) { (response) in
            switch response.result {
            case .success(let heroModel):
                completion(.success(heroModel))
            case .failure(let error):
                print("cant fetch DotaAPI \(error)")
            }
        }
    }
    
}
