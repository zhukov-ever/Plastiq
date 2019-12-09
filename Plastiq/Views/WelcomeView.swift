//
//  WelcomeView.swift
//  OtusInLesson1
//
//  Created by kokozzz on 1/12/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    static let name = "Welcome"
    
    @Binding var selectedTabIndex: Int
    @Binding var shouldShowDetails: Bool
    
    func actionHandler() {
        selectedTabIndex = TabViewTypes.extraView.rawValue
        shouldShowDetails = true
    }
    
    var body: some View {
        VStack {
            Button(action: actionHandler) {
                Text("My profile")
            }
            .roundedAccent()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    
    @State static var previewSelectedTabIndex = 0
    @State static var previewShouldShowDetails = false
    
    static var previews: some View {
        WelcomeView(selectedTabIndex: $previewSelectedTabIndex, shouldShowDetails: $previewShouldShowDetails)
    }
}

