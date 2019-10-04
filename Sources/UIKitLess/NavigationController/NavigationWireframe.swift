//
//  NavigationWireframe.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public typealias Callback = () -> Void

public protocol NavigationWireframe {
    public func show(_ navigable: Navigable)
    public func push(_ navigable: Navigable)
    public func pop()
    public func present(_ navigable: Navigable, completion: Callback?)
    public func dismiss(completion: Callback?)
    public static func with(root: Navigable) ->
    NavigationWireframe
}
