//
//  AFButton.swift
//  AppleFrameworkSwiftUI
//
//  Created by Berkay on 24.02.2025.
//

import SwiftUI

struct AFButton: View {
    
    var buttonTitle: String
    
    var body: some View {
        Text(buttonTitle)
            .font(.system(size: 18, weight: .semibold))
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(buttonTitle: "Learn More")
}
