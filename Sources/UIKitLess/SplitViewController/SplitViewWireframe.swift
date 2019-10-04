//
//  SplitViewWireframe.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public protocol SplitViewWireframe {
    public func show(_ navigable: Navigable)
    public func showDetail(_ navigable: Navigable)
}
