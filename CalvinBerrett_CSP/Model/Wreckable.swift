//
//  Scrubs.swift
//  CalvinBerrett_CSP
//
//  Created by Berrett, Calvin on 11/20/17.
//  Copyright © 2017 Berrett, Calvin. All rights reserved.
//

import Foundation
public protocol Scrubs
{
    var rektState : Bool {get set}
    func wreck() -> Void
    func isRekt() -> Bool
}
