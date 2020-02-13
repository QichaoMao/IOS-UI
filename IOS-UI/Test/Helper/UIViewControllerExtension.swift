//
//  UIViewControllerExtension.swift
//  Test
//
//  Created by Qichao Mao on 2/12/20.
//  Copyright © 2020 Qichao Mao. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func removeChildViewController(_ childViewController: UIViewController) {
        childViewController.removeFromParent()
        childViewController.willMove(toParent: nil)
        childViewController.removeFromParent()
        childViewController.didMove(toParent: nil)
        childViewController.view.removeFromSuperview()
        view.layoutIfNeeded()
    }
    
//    func addChildViewControllerWithView(_ childViewController: UIViewController, toView view: UIView? = nil) {
//
//        let view: UIView = view ?? self.view
//        childViewController.removeFromParent()
//        childViewController.willMove(toParent: self)
//        addChild(childViewController)
//        childViewController.didMove(toParent: self)
//        childViewController.view.translatesAutoresizingMaskIntoConstraints = false
//
//        view.addConstraints([
//          NSLayoutConstraint(item: childViewController.view!, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: -10),
//          NSLayoutConstraint(item: childViewController.view!, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
//          NSLayoutConstraint(item: childViewController.view!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
//          NSLayoutConstraint(item: childViewController.view!, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
//        ])
//        view.layoutIfNeeded()
//    }

    
    func addChildViewControllerWithView(_ childViewController: UIViewController, toView view: UIView? = nil) {
       let view: UIView = view ?? self.view
       childViewController.removeFromParent()
       childViewController.willMove(toParent: self)
       addChild(childViewController)
       childViewController.didMove(toParent: self)
       childViewController.view.translatesAutoresizingMaskIntoConstraints = false
       view.addSubview(childViewController.view)
       view.addConstraints([
         NSLayoutConstraint(item: childViewController.view!, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: -10),
         NSLayoutConstraint(item: childViewController.view!, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: 0),
         NSLayoutConstraint(item: childViewController.view!, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0),
         NSLayoutConstraint(item: childViewController.view!, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
       ])
       view.layoutIfNeeded()
     }
}
