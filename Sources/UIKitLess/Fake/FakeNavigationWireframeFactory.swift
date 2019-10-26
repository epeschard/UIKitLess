//
//  FakeNavigationWireframeFactory.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 22/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public class FakeNavigationWireframeFactory: NavigationWireframeFactory {

    let fake: NavigationWireframe

    required public init(rootViewController: NavigationWireframe) {
        self.fake = rootViewController
    }

    public init(fake: NavigationWireframe) {
        self.fake = fake
    }

    public func make() -> NavigationWireframe {
        return fake
    }
}
