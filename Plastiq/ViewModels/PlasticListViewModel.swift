//
//  PlasticListViewModel.swift
//  Plastiq
//
//  Created by kokozzz on 6/12/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import Combine

class PlasticListViewModel: ObservableObject {
    
    @Published private(set) var entities: [Plastic] = []
    
    init() {
        print(#function)
        entities = [
            Plastic(name: "PLA", price: 12),
            Plastic(name: "ABS", price: 15),
            Plastic(name: "PETG", price: 19),
        ]
    }
    
}
