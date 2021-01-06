//
//  Extensions.swift
//  Matrix_Interview_Main
//
//  Created by hyperactive on 06/01/2021.
//

import Foundation
import UIKit

extension UIView {
    func pin(view: UIView, with insets: UIEdgeInsets) {
        self.addSubview(view)
        
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: self.topAnchor),
            view.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
