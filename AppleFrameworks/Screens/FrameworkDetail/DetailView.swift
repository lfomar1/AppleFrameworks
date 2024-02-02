//
//  DetailView.swift
//  AppleFrameworks
//
//  Created by Lucas Omar on 2024-02-01.
//

import SwiftUI

struct DetailView: View {
    let framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button(action: {
                isShowingSafariView = true
            }, label: {
                AFButton()
            })
        }
        .preferredColorScheme(.dark)
        .fullScreenCover(isPresented: $isShowingSafariView, 
               content: {SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }

}
#Preview {
    DetailView(framework: MockData.sampleFramework )
}
