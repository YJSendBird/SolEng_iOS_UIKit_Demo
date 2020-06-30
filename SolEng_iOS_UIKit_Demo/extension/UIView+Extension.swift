//
//  UIView+Extension.swift
//  SolEng_iOS_UIKit_Demo
//
//  Created by Yongjun Choi on 2020/06/25.
//  Copyright © 2020 Yongjun Choi. All rights reserved.
//


import UIKit

// MARK: - Constraint
extension UIView {
  
    // Set left, right, top, bottom
    @discardableResult
    func setConstraint(from view: UIView,
                       left: CGFloat? = nil,
                       right: CGFloat? = nil,
                       top: CGFloat? = nil,
                       bottom: CGFloat? = nil,
                       priority: UILayoutPriority? = nil) -> UIView {
        
        
        var constraints: [NSLayoutConstraint] = []
        
        if let left = left {
            constraints += [ self.leftAnchor.constraint(equalTo: view.leftAnchor, constant: left) ]
        }
        if let right = right {
            constraints += [ self.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -right) ]
        }
        if let top = top {
            constraints += [ self.topAnchor.constraint(equalTo: view.topAnchor, constant: top) ]
        }
        if let bottom = bottom {
            constraints += [ self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -bottom) ]
        }
        
        
        if let priority = priority {
            constraints.forEach { $0.priority = priority }
        }
        
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
        
        return self
    }
}

