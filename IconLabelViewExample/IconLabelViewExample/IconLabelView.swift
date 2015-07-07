//
//  IconLabelView.swift
//  WMIconLabelExample
//
//  Created by Woramet Muangsiri on 7/7/15.
//  Copyright © 2015 Woramet Muangsiri. All rights reserved.
//

import UIKit

@IBDesignable class IconLabelView: UIView {
    
    private let kPadding:CGFloat = 3
    
    private var textLabel = UILabel()
    private var iconImageView = UIImageView()
    
    //MARK:- Properties
    var textFont:UIFont = UIFont.systemFontOfSize(14.0) {
        didSet {
            textLabel.font = textFont
        }
    }
    
    @IBInspectable var textColor:UIColor = UIColor.darkTextColor() {
        didSet {
            textLabel.textColor = textColor
        }
    }
    
    @IBInspectable var iconImage:UIImage = UIImage() {
        didSet {
            iconImageView.image = iconImage
        }
    }
    
    @IBInspectable var text:String = "" {
        didSet {
            textLabel.text = text
        }
    }
    
    //MARK:- Initializations
    required init(coder aDecoder:NSCoder) {
        super.init(coder:aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    //MARK:- Overrides
    override func prepareForInterfaceBuilder() {
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let viewHeight = CGRectGetHeight(frame)
        let viewWidth = CGRectGetWidth(frame)
        
        iconImageView.frame = CGRect(x: 0, y: 0, width: viewHeight, height: viewHeight)
        textLabel.frame = CGRect(x: viewHeight + kPadding, y: 0, width: viewWidth - viewHeight, height: viewHeight)
    }
    
    //MARK:- Privates
    private func setup() {
        textLabel.font = UIFont.systemFontOfSize(frame.height * 0.9)
        textLabel.baselineAdjustment = UIBaselineAdjustment.AlignCenters
        textLabel.textAlignment = NSTextAlignment.Left
        self.addSubview(textLabel)
        
        iconImageView.contentMode = UIViewContentMode.Center
        self.addSubview(iconImageView)
    }
    
}
