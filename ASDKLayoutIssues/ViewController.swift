//
//  ViewController.swift
//  ASDKLayoutIssues
//
//  Created by Schechter, David on 10/19/16.
//  Copyright © 2016 DavidSchechter. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: ASViewController<ASDisplayNode> {
    
    // MARK: Private Variables
    
    fileprivate var viewControllerNode:ViewControllerNode = ViewControllerNode()
    
    
    // MARK: Initialisers
    init(withTitle:String) {
        super.init(node: viewControllerNode)
        self.viewControllerNode.controller = self
        //        self.searchPageNode.controller = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // do any ASDK view stuff in loadView
    
    override func loadView() {
        super.loadView()
        self.view.backgroundColor = UIColor.white
    }
}
