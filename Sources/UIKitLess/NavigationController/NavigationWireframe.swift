//
//  NavigationWireframe.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public typealias Callback = () -> Void

public protocol NavigationWireframe {
    func show(_ navigable: Navigable)
    func push(_ navigable: Navigable)
    func pop()
    func present(_ navigable: Navigable, completion: Callback?)
    func dismiss(completion: Callback?)
    static func with(root: Navigable) ->
    NavigationWireframe
}
