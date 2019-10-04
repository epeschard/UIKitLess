//
//  Navigable.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS)
import UIKit
#else
import AppKit
#endif

protocol Navigable: class {}

extension Navigable {

    #if !os(macOS)
    var viewController: UIViewController? {
        return self as? UIViewController
    }
    #else
    var viewController: NSViewController? {
        return self as? NSViewController
    }
    #endif


}
