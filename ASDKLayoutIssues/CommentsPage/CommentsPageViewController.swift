//
//  CommentsPageViewController.swift
//  N2
//
//  Created by Schechter, David on 10/18/16.
//  Copyright © 2016 eBay. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class CommentsPageViewController: ASViewController<ASDisplayNode> {
    
    // MARK: Private Variables
    
    fileprivate var commentsPageNode:CommentsPageNode = CommentsPageNode()
    
    
    // MARK: Initialisers
    init(withTitle:String) {
        super.init(node: commentsPageNode)
        self.commentsPageNode.controller = self
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
