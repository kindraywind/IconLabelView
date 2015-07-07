//
//  ViewController.swift
//  IconLabelViewExample
//
//  Created by Woramet Muangsiri on 7/8/15.
//  Copyright © 2015 Woramet Muangsiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let iconLabelView = IconLabelView(frame: CGRect(x: 20, y: 100, width: 300, height: 35))
        iconLabelView.text = "programmatically"
        iconLabelView.textColor = UIColor.orangeColor()
        iconLabelView.iconImage = UIImage(named: "messageImage")!
        
        self.view.addSubview(iconLabelView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

