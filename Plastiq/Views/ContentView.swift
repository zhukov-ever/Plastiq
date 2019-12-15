//
//  ContentView.swift
//  Plastiq
//
//  Created by kokozzz on 6/12/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import SwiftUI

enum TabViewTypes: Int {
    case welcome = 0
    case plastiqList = 1
    case extraView = 2
}

struct ContentView: View {
    
    @State var selectedTabIndex: Int = TabViewTypes.welcome.rawValue
    @State var shouldShowDetails: Bool = false
    
    var body: some View {
        TabView(selection: $selectedTabIndex) {
            WelcomeView(selectedTabIndex: $selectedTabIndex,
                        shouldShowDetails: $shouldShowDetails)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text(WelcomeView.name)
                    }
                }
                .tag(TabViewTypes.welcome.rawValue)
            PlasticListView()
                .environmentObject(PlasticListViewModel())
                .tabItem {
                    VStack {
                        Image(systemName: "list.dash")
                        Text(PlasticListView.name)
                    }
                }
                .tag(TabViewTypes.plastiqList.rawValue)
            ExtraView(shouldShowDetails: $shouldShowDetails)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text(ExtraView.name)
                    }
                }
                .tag(TabViewTypes.extraView.rawValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
