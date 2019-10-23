//
//  File.swift
//  UIKitLess
//
//  Created by Eugène Peschard on 22/10/2019.
//  Copyright © 2019 pesch.app All rights reserved.
//

public protocol ToastWireframeFactory {
    func make(message: String) -> ToastWireframe
}

public protocol ToastWireframe: Viewable {
    var message: String { get }
}
