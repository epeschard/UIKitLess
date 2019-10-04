//
//  NavigationControllerFake.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import Foundation

class NavigationControllerFake: NavigationWireframe {

    var viewStack = [Navigable]()
    var presented: Navigable?

    func show(_ navigable: Navigable) {
        viewStack.append(navigable)
    }

    func push(_ navigable: Navigable) {
        viewStack.append(navigable)
    }

    func pop() {
        _ = viewStack.popLast()
    }

    func present(_ navigable: Navigable, completion: Callback?) {
        presented = navigable
        completion?()
    }

    func dismiss(completion: Callback?) {
        presented = nil
        completion?()
    }

    func setTitle(with name: String) {

    }

    var visibleScreenName: String? {
        let screenNameable = visible as? ScreenNameable
        return screenNameable?.screenName
    }

    private var visible: Navigable? {
        return presented ?? viewStack.last
    }

    static func with(root: Navigable) -> NavigationWireframe {
        let navigation = NavigationControllerFake()
        navigation.presented = root
        navigation.viewStack.append(root)
        return navigation
    }
}

protocol ScreenNameable {
    var screenName: String { get }
}
