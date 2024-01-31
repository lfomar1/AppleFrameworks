//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Lucas Omar on 2024-01-31.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        LazyVGrid (columns: columns){
            ForEach(MockData.frameworks, id: \.self) { framework in
                FrameworkTitleView(imageTitle: framework.imageName,
                                   appTitle: framework.name)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let imageTitle: String
    let appTitle: String
    
    var body: some View {
        VStack {
            Image(imageTitle)
                .resizable()
                .frame(width: 90, height: 90)
            Text(appTitle)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}
