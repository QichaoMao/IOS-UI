//
//  WalkthroughPageViewController.swift
//  Test
//
//  Created by Qichao Mao on 2/11/20.
//  Copyright © 2020 Qichao Mao. All rights reserved.
//

import UIKit

class WalkthroughPageViewController: UIViewController {
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var imageContainerView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var subtitleLable: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    let model: WalkthroughModel
    
    init(model: WalkthroughModel, nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        
        self.model = model
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.commonInit()
    }

    func commonInit() {
        imageView.image = UIImage(named: model.icon)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = .white
        imageContainerView.backgroundColor = .clear
        
        titleLabel.text = model.title
        titleLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        titleLabel.textColor = .white
        
        subtitleLable.attributedText = NSAttributedString(string: model.subtitle)
        subtitleLable.font = UIFont.systemFont(ofSize: 14.0)
        subtitleLable.textColor = .white
        
        containerView.backgroundColor = UIColor.black
    }
  

}
