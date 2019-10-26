//
//  NavigationWireframe.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 22/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import Foundation

public protocol NavigationWireframeFactory {
    init(rootViewController: NavigationWireframe)
    func make() -> NavigationWireframe
}

public protocol NavigationWireframe: Viewable {
    func push(view: Navigable)
    func popToLastCheckpoint()
    func setPopCheckpoint()
    func unsetPopCheckpoint()
    func setLeftButton(title: String, target: Any, selector: Selector)
}
