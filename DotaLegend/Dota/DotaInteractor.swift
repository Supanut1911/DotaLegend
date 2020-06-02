//
//  DotaInteractor.swift
//  DotaLegend
//
//  Created by Supanut Laddayam on 2/6/2563 BE.
//  Copyright (c) 2563 Supanut LDM. All rights reserved.
//

import Foundation

class DotaInteractor: DotaInteractorInterface {
    weak var presenter: DotaInteractorDelegate?
    lazy var operationQueue = OperationQueue()
    
}
