//
//  FrameworkDetailView.swift
//  AppleFrameworkSwiftUI
//
//  Created by Berkay on 24.02.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack{
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .fontWeight(.medium)
                .padding(.all, 30)
            
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(buttonTitle: "Learn More")
            }
            .fullScreenCover(isPresented: $isShowingSafariView) {
                if let frameworkURLString = URL(string: framework.urlString) {
                    SafariView(url: frameworkURLString)
                }
            }
        }
    }
}

//#Preview {
//    FrameworkDetailView(framework: MockData.sampleFramework)
//        .preferredColorScheme(.dark)
//}
