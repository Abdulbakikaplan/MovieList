//
//  NSObject+Ext.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//

import Foundation

extension NSObject {
    class var nameOfClass: String {
        return String(describing: self)
    }
}
