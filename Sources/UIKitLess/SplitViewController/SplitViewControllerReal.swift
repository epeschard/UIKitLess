//
//  SplitViewControllerReal.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS)
import UIKit

class SplitViewControllerReal: UISplitViewController, SplitViewWireframe {

    func show(_ navigable: Navigable) {
        guard let viewController = navigable.viewController else { return }
        show(viewController, sender: nil)
    }

    func showDetail(_ navigable: Navigable) {
        guard let viewController = navigable.viewController else { return }
        showDetailViewController(viewController, sender: nil)
    }
}
#else
//import AppKit
//
//TODO: No equivalent to UINavigationController on AppKit
//class SplitViewControllerReal: NSSplitViewController, SplitViewWireframe {
//
//    func show(_ navigable: Navigable) {
//        guard let viewController = navigable.viewController else { return }
//        show(viewController)
//        //TODO: Add item to NSOutlineView
//    }
//
//    func showDetail(_ navigable: Navigable) {
//        guard let viewController = navigable.viewController else { return }
//        showDetail(<#T##navigable: Navigable##Navigable#>)
//        //TODO: Add item to the DetailViewController
//    }
//}
#endif
