//
//  NavigationControllerReal.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS)
import UIKit

class NavigationControllerReal: UINavigationController, NavigationWireframe {

    func show(_ navigable: Navigable) {
        guard let viewController = navigable.viewController else { return }
        show(viewController, sender: nil)
    }

    func push(_ navigable: Navigable) {
        guard let viewController = navigable.viewController else { return }
        pushViewController(viewController, animated: true)
    }

    func pop() {
        popViewController(animated: true)
    }

    func present(_ navigable: Navigable, completion: Callback?) {
        guard let viewController = navigable.viewController else { return }
        present(viewController, animated: true, completion: completion)
    }

    func dismiss(completion: Callback?) {
        dismiss(animated: true, completion: completion)
    }

    static func with(root: Navigable) -> NavigationWireframe {
        guard let viewController = root.viewController,
            let navigation = UINavigationController(rootViewController: viewController) as? NavigationWireframe else {
            return NavigationControllerReal()
        }
        return navigation
    }
}
#else
//TODO: No equivalent to UINavigationController on AppKit
// https://stackoverflow.com/questions/4853209/uinavigationcontroller-alike-for-desktop-cocoa
#endif
