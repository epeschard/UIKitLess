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

public protocol Navigable: Viewable {
    /**
    Implement this in your view if you want to do
    something when the view is poppedfrom the
    navigation coordinator, such as notify a delegate
    that the operation has been aborted. Typically
    this is used to handle the case when the user has
    tapped the back button in a UINavigationController.
    */
    func navigationWireframeDidGoBack()
}

public extension Navigable {

    #if !os(macOS)
    var viewController: UIViewController? {
        return self as? UIViewController
    }
    #else
    var viewController: NSViewController? {
        return self as? NSViewController
    }
    #endif
    
    /// By default, ignore back events.
    func navigationWireframeDidGoBack() {}
}
