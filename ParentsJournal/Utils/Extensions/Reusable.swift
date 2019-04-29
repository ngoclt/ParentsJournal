//
//  Reusable.swift
//  ParentsJournal
//
//  Created by Ngoc LE on 4/29/19.
//  Copyright © 2019 LifeOfCoder. All rights reserved.
//

import Foundation

protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    static var reuseIdentifier: String {
        /// Use the class's name as an identifier
        return String(describing: Self.self)
    }
}
