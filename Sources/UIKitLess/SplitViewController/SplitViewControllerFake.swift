//
//  NavigationControllerFake.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public class SplitViewControllerFake: SplitViewWireframe {

    var masterStack = [Navigable]()
    public var master: Navigable?
    var detailStack = [Navigable]()
    public var detail: Navigable?

    public init() {
        self.masterStack = []
        self.master = nil
        self.detailStack = []
        self.detail = nil
    }

    public func show(_ navigable: Navigable) {
        masterStack.append(navigable)
    }

    public func showDetail(_ navigable: Navigable) {
        detailStack.append(navigable)
    }
}
