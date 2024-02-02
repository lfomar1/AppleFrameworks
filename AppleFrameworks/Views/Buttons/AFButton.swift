//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Lucas Omar on 2024-02-01.
//

import SwiftUI

struct AFButton: View {
    var body: some View {
        Text("Learn More")
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 280, height: 50)
            .background(.blue)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton()
}
