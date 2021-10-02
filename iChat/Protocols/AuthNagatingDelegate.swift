//
//  AuthNagatingDelegate.swift
//  iChat
//
//  Created by Alexander Airumyan on 30.09.2021.
//

import Foundation

protocol AuthNavigatingDelegate: AnyObject {
    func toLoginVC()
    func toSignUpVC()
}
