//
//  Optional+.swift
//  DessertMenu
//
//  Created by Felipe Marques on 05/01/24.
//

import Foundation
extension Optional where Wrapped: Collection {
    var isNilOrEmpty: Bool {
        return self?.isEmpty ?? true
    }
}
