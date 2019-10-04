//
//  Navigable.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 04/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

import UIKit

protocol Navigable: class {}

extension Navigable {

    var viewController: UIViewController? {
        return self as? UIViewController
    }
}
