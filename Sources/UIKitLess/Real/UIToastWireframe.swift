//
//  UIToastWireframe.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 22/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

#if !os(macOS)
import UIKit

public class UIToastWireframeFactory: ToastWireframeFactory {

    public init() {}

    public func make(message: String) -> ToastWireframe {
        return UIAlertController(title: message, message: nil, preferredStyle: .alert)
    }
}

extension UIAlertController: ToastWireframe {
    public var message: String {
        return title ?? ""
    }
}

extension UIAlertController: Viewable {}
extension ToastWireframe: Viewable {}
#endif
