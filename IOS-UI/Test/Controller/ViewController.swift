//
//  ViewController.swift
//  Test
//
//  Created by Qichao Mao on 2/11/20.
//  Copyright © 2020 Qichao Mao. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    let walkthroughs = [
      WalkthroughModel(title: "Quick Overview", subtitle: "Quickly visualize important business metrics. The overview in the home tab shows the most important metrics to monitor how your business is doing in real time.", icon: "analytics-icon"),
      WalkthroughModel(title: "Analytics", subtitle: "Dive deep into charts to extract valuable insights and come up with data driven product initiatives, to boost the success of your business.", icon: "bars-icon"),
      WalkthroughModel(title: "Dashboard Feeds", subtitle: "View your sales feed, orders, customers, products and employees.", icon: "activity-feed-icon"),
      WalkthroughModel(title: "Get Notified", subtitle: "Receive notifications when critical situations occur to stay on top of everything important.", icon: "bell-icon"),
    ]
    
    
    fileprivate func walkthroughVC() -> WalkThroughViewController {
        let viewControllers = walkthroughs.map { WalkthroughPageViewController(model: $0, nibName: "WalkthroughPageViewController", bundle: nil)}
        return WalkThroughViewController(nibName: "WalkThroughViewController", bundle: nil, viewControllers: viewControllers)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let walkthroughVC = self.walkthroughVC()
        walkthroughVC.delegate = self
        self.addChildViewControllerWithView(walkthroughVC)
        
    }
    
}

extension ViewController: WalkthroughViewControllerDelegate {
    func walkthroughViewControllerDidFinishFlow(_ vc: WalkThroughViewController) {
        UIView.transition(with: self.view, duration: 1, options: .transitionFlipFromLeft, animations: {
            vc.view.removeFromSuperview()
            let viewControllerToBePresented = UIViewController()
            self.view.addSubview(viewControllerToBePresented.view)
        }, completion: nil)
    }
}

