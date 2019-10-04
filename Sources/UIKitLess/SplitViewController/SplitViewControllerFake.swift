//
//  NavigationControllerFake.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

class SplitViewControllerFake: SplitViewWireframe {

    var masterStack = [Navigable]()
    var master: Navigable?
    var detailStack = [Navigable]()
    var detail: Navigable?

    func show(_ navigable: Navigable) {
        masterStack.append(navigable)
    }

    func showDetail(_ navigable: Navigable) {
        detailStack.append(navigable)
    }
}
