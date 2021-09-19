//
//  SelfConfiguringCell.swift
//  iChat
//
//  Created by Alexander Airumyan on 18.09.2021.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure<U: Hashable>(with value: U)
}
