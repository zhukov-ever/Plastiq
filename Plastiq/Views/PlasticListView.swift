//
//  PlasticListView.swift
//  Plastiq
//
//  Created by kokozzz on 6/12/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import SwiftUI


struct PlasticListView: View {
    static let name = "Plastic list"
    
    @EnvironmentObject var viewModel: PlasticListViewModel
    
    var body: some View {
        NavigationView {
            Form {
                ForEach(viewModel.entities) { entity in
                    NavigationLink(destination: Text(entity.name)) {
                        Text(entity.name)
                    }
                }
            }
            .navigationBarHidden(false)
            .navigationBarTitle("Plastic types")
        }
    }
}

struct PlasticListView_Previews: PreviewProvider {
    static let viewModel = PlasticListViewModel()
    
    static var previews: some View {
        PlasticListView()
            .environmentObject(viewModel)
    }
}
