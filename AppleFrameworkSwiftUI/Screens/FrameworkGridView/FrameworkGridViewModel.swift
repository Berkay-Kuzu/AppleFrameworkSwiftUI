//
//  FrameworkGridViewModel.swift
//  AppleFrameworkSwiftUI
//
//  Created by Berkay on 24.02.2025.
//

import Foundation

class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework = MockData.sampleFramework {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
}
