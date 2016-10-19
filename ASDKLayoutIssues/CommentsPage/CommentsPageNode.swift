//
//  CommentsPageNode.swift
//  N2
//
//  Created by Schechter, David on 10/18/16.
//  Copyright © 2016 eBay. All rights reserved.
//

import Foundation
import UIKit
import AsyncDisplayKit

class CommentsPageNode:  ASDisplayNode,ASTableDelegate,ASTableDataSource,ASEditableTextNodeDelegate{
    
    var tableNode:ASTableNode = ASTableNode()
    
    var editable:ASEditableTextNode = ASEditableTextNode()
    var button:ASButtonNode = ASButtonNode()
    
    var controller:UIViewController? = nil
    
    override init() {
        super.init()
        self.editable.attributedPlaceholderText = NSAttributedString(string: "Type here....")
        self.button.setTitle("Send", with: nil, with: UIColor.blue, for: ASControlState())
        self.addSubnode(tableNode)
        self.addSubnode(self.editable)
        self.addSubnode(self.button)
    }
    
    
    override func didLoad() {
        super.didLoad()
        self.tableNode.view.asyncDelegate = self
        self.tableNode.view.asyncDataSource = self

    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: ASTableView, nodeForRowAt indexPath: IndexPath) -> ASCellNode {
        return ASCellNode()
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
//        self.tableNode.preferredFrameSize = constrainedSize.max
//        return ASStaticLayoutSpec(children: [self.tableNode])
        
        
        let horStack = ASStackLayoutSpec()
        horStack.direction = .horizontal
        horStack.justifyContent = .start
        horStack.alignItems = .stretch

        horStack.setChildren([self.editable,self.button])

        
        let verStack = ASStackLayoutSpec()
        verStack.direction = .vertical
        verStack.justifyContent = .start
        verStack.alignItems = .start
        self.tableNode.preferredFrameSize = CGSize(width: constrainedSize.max.width, height: constrainedSize.max.height-100)
        verStack.setChildren([self.tableNode,horStack])
        
        return verStack
        
        
    }
}


