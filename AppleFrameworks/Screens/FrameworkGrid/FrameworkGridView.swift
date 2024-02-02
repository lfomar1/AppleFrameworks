//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Lucas Omar on 2024-01-31.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid (columns: viewModel.columns){
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework){
                            	FrameworkTitleView(framework: framework)
                                .foregroundStyle(Color(.label))
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self){framework in
                    DetailView(framework: framework)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    FrameworkGridView()
}

