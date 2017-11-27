//
//  .swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 11/20/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import UIKit
public class nubScrubs : Scrubs
{
    private var scrubColor : UIColor
    //MARK: Squishable data member
    public var rektState : Bool
    
    public init()
    {
        self.scrubColor = UIColor()
        self.rektState = false
    }
    
    //MARK:- Wreckable methods
    public func wreck() -> Void
    {
        
    }
}
