//
//  TabButton.swift
//  TabSwitcher
//
//  Created by Ivo Silva on 25/09/2016.
//  Copyright © 2016 Ivo Silva. All rights reserved.
//

import UIKit

class TabButton: UIView {
    let button: UIButton = UIButton(frame: CGRect.zero)
    let indicator: UIView = UIView(frame: CGRect.zero)
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        addSubViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /**
     Add the subviews to the view
     */
    func addSubViews() {
        addSubview(button)
        addSubview(indicator)
    }
    
    override func layoutSubviews() {
        
        super.layoutSubviews()
        
        button.frame = frame
        
        indicator.frame = CGRect(x: 0,
                                 y: bounds.height - TabButton.IndicatorHeight,
                                 width: bounds.width,
                                 height: TabButton.IndicatorHeight )
        
    }
    
    /**
     Configure the button with the title and indicator's color
     
     - parameter title:String The title of the button
     - parameter indicatorColor:UIColor The color for the button's indicator
     */
    func configure(title: String, titleColor: UIColor, indicatorColor: UIColor) {
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        
        indicator.backgroundColor = indicatorColor
    }
    
    /// The height for the indicator view
    static let IndicatorHeight: CGFloat = 5
}
