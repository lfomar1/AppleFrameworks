//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Lucas Omar on 2024-02-01.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var selectedFramework: Framework? {
        didSet {isShowingDetailView = true}
    }
    @Published var isShowingDetailView = false
}
