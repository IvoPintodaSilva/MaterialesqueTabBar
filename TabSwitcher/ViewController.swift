//
//  ViewController.swift
//  TabSwitcher
//
//  Created by Ivo Silva on 25/09/2016.
//  Copyright © 2016 Ivo Silva. All rights reserved.
//

import UIKit
import Cartography

class ViewController: UIViewController {
    
    let tabButton: TabButton = TabButton(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabButton.configure(title: "Button", titleColor: UIColor.gray, indicatorColor: UIColor.red)
        
        addSubviews()
        
        addConstraints()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     Add subviews to the ViewController's view
     */
    private func addSubviews() {
        view.addSubview(tabButton)
    }
    
    /**
     Add auto-layout's constraints to the view
     */
    private func addConstraints() {
        constrain(self.view, tabButton) { container, tab in
            tab.leading == container.leading
            tab.trailing == container.trailing
            
            tab.top == container.top
            tab.bottom == container.top + 40
        }
    }

}

