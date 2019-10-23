//
//  UISplitWireframe.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 22/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS)
import UIKit

/// Implements the SplitWireframe for use with UIKit components (using a UISplitViewController).
public class UISplitWireframe: UISplitViewController {}

extension UISplitWireframe: SplitWireframe {

    public var master: Viewable? {
        didSet {
            guard let viewController = master?.viewController else { return }
            viewControllers = [viewController]
            preferredDisplayMode = .allVisible
        }
    }

    public var detail: Viewable? {
        didSet {
            guard let viewController = detail?.viewController else { return }
            showDetailViewController(viewController, sender: nil)
        }
    }
}

extension UISplitWireframe: Viewable {}
#endif
