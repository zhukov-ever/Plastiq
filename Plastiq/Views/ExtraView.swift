//
//  ExtraView.swift
//  OtusInLesson1
//
//  Created by kokozzz on 1/12/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import SwiftUI

struct ExtraView: View {
    static let name = "Extra view"
    
    @Binding var shouldShowDetails: Bool
    
    func actionHandler() {
        shouldShowDetails = true
    }
    
    var body: some View {
        VStack {
            Button(action: actionHandler) {
                Text("Show Detail")
            }.sheet(isPresented: $shouldShowDetails) {
                Text("Detail!")
            }
        }
    }
}

struct ExtraView_Previews: PreviewProvider {
    
    @State static var previewShouldShowDetails = false
    
    static var previews: some View {
        ExtraView(shouldShowDetails: $previewShouldShowDetails)
    }
}
