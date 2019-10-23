//
//  SplitViewWireframe.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public protocol SplitWireframe: Viewable {
    var master: Viewable? { get set }
    var detail: Viewable? { get set }
}
