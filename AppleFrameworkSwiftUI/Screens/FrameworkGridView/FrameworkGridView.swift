//
//  FrameworkGridView.swift
//  AppleFrameworkSwiftUI
//
//  Created by Berkay on 24.02.2025.
//

import SwiftUI

//struct FrameworkGridView: View {
//    
//    @StateObject var viewModel = FrameworkGridViewModel()
//    
//    let columns: [GridItem] = [GridItem(.flexible()),
//                               GridItem(.flexible()),
//                               GridItem(.flexible())]
//    
//    var body: some View {
//        NavigationView {
//            ScrollView(showsIndicators: false) {
//                LazyVGrid(columns: columns) {
//                    ForEach(MockData.frameworks) { framework in
//                        FrameworkTitleView(framework: framework)
//                            .onTapGesture {
//                                viewModel.selectedFramework = framework
//                            }
//                    }
//                }
//            }
//            .navigationTitle("🍎 Frameworks")
//            .sheet(isPresented: $viewModel.isShowingDetailView) {
//                FrameworkDetailView(framework: viewModel.selectedFramework,
//                                    isShowingDetailView: $viewModel.isShowingDetailView)
//            }
//        }
//    }
//}
//
//#Preview {
//    FrameworkGridView()
//        .preferredColorScheme(.dark)
//}

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: viewModel.selectedFramework,
                                                                        isShowingDetailView: $viewModel.isShowingDetailView))
            }
            .tint(.white)
           
//            .sheet(isPresented: $viewModel.isShowingDetailView) {
//                FrameworkDetailView(framework: viewModel.selectedFramework,
//                                    isShowingDetailView: $viewModel.isShowingDetailView)
//            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}
