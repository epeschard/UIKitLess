//
//  NavigationWireframeSpy.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 22/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import Foundation

public class NavigationWireframeSpy: NavigationWireframe {

    var pushedViews = [Navigable]()

    public var topView: Navigable? {
        return pushedViews.last
    }

    public init() {}

    public func push(view: Navigable) {
        pushedViews.append(view)
    }

    public func popToLastCheckpoint() {}

    public func setPopCheckpoint() {}

    public func unsetPopCheckpoint() {}

    public func setLeftButton(title: String,
                              target: Any,
                              selector: Selector) {
    }
}
