//
//  UIView+Extension.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 14/12/23.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
}
