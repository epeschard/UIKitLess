//
//  NavigationControllerFake.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import Foundation

public class NavigationControllerFake: NavigationWireframe {

    var viewStack = [Navigable]()
    var presented: Navigable?

    public init() {
        self.viewStack = []
        self.presented = nil
    }

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

    public var visible: Navigable? {
        return presented ?? viewStack.last
    }

    public static func with(root: Navigable) -> NavigationWireframe {
        let navigation = NavigationControllerFake()
        navigation.presented = root
        navigation.viewStack.append(root)
        return navigation
    }
}

public protocol ScreenNameable {
    var screenName: String { get }
}
