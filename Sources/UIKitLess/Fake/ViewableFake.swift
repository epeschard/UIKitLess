//
//  ViewableFake.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 22/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public extension Viewable {
    func present(view: Viewable) {}
    func present(view: Viewable,
                 forSeconds: Double) {}
    func dismiss() {}
}
