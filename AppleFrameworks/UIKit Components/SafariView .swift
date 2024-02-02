//
//  SafariView .swift
//  AppleFrameworks
//
//  Created by Lucas Omar on 2024-02-01.
//

import SafariServices
import SwiftUI

struct SafariView: UIViewControllerRepresentable{
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
