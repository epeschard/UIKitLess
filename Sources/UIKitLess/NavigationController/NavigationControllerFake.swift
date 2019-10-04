//
//  NavigationControllerFake.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import Foundation

class NavigationControllerFake: NavigationWireframe {

    private var viewStack = [Navigable]()
    private var presented: Navigable?

    public func show(_ navigable: Navigable) {
        viewStack.append(navigable)
    }

    public func push(_ navigable: Navigable) {
        viewStack.append(navigable)
    }

    public func pop() {
        _ = viewStack.popLast()
    }

    public func present(_ navigable: Navigable, completion: Callback?) {
        presented = navigable
        completion?()
    }

    public func dismiss(completion: Callback?) {
        presented = nil
        completion?()
    }

    public func setTitle(with name: String) {

    }

    public var visibleScreenName: String? {
        let screenNameable = visible as? ScreenNameable
        return screenNameable?.screenName
    }

    private var visible: Navigable? {
        return presented ?? viewStack.last
    }

    public static func with(root: Navigable) -> NavigationWireframe {
        let navigation = NavigationControllerFake()
        navigation.presented = root
        navigation.viewStack.append(root)
        return navigation
    }
}

protocol ScreenNameable {
    fileprivate var screenName: String { get }
}
