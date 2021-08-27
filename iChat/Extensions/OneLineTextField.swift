//
//  OneLineTextField.swift
//  iChat
//
//  Created by Alexander Airumyan on 24.08.2021.
//

import UIKit

class OneLineTextField: UITextField {
	
	convenience init(font: UIFont? = .avenir20()) {
		self.init()
		
		self.font = font
		self.borderStyle = .none
		self.translatesAutoresizingMaskIntoConstraints = false
		
		var buttomView = UIView()
		buttomView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
		buttomView.backgroundColor = .textFieldLight()
		buttomView.translatesAutoresizingMaskIntoConstraints = false
		self.addSubview(buttomView)
		
		NSLayoutConstraint.activate([
			buttomView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
			buttomView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			buttomView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			buttomView.heightAnchor.constraint(equalToConstant: 1)
		])
	}
}
