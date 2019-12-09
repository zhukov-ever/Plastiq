//
//  ButtonStyles.swift
//  Plastiq
//
//  Created by kokozzz on 6/12/19.
//  Copyright © 2019 kokozzz. All rights reserved.
//

import SwiftUI

extension Button {
    @inlinable public func roundedAccent() -> some View {
        return self
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(Color.accentColor)
            .foregroundColor(Color.white)
            .cornerRadius(8)
    }
}
