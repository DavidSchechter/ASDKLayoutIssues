//
//  ViewControllerNode.swift
//  ASDKLayoutIssues
//
//  Created by Schechter, David on 10/19/16.
//  Copyright © 2016 DavidSchechter. All rights reserved.
//

import Foundation
import UIKit
import AsyncDisplayKit

class ViewControllerNode:  ASDisplayNode{
    
    var button:ASButtonNode = ASButtonNode()
    
    var controller:UIViewController? = nil
    
    override init() {
        super.init()
        self.button.setTitle("Push page", with: nil, with: UIColor.blue, for: ASControlState())
        self.button.addTarget(self, action: #selector(ViewControllerNode.goToCommentsPage), forControlEvents: .touchUpInside)
        self.addSubnode(button)
    }
    
    func goToCommentsPage()
    {
        let commentsPage = CommentsPageViewController(withTitle: "")
        self.controller?.navigationController?.pushViewController(commentsPage, animated: true)
    }

    
    override func didLoad() {
        super.didLoad()
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        self.button.preferredFrameSize = CGSize(width: 200, height: 200)
        return ASStaticLayoutSpec(children: [self.button])
    }
}
