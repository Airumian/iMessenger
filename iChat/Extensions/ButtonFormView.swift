//
//  ButtonFormView.swift
//  iChat
//
//  Created by Alexander Airumyan on 24.08.2021.
//

import UIKit

class ButtonFormView: UIView {
	init(label: UILabel, buttom: UIButton) {
		super.init(frame: .zero)
		
		self.translatesAutoresizingMaskIntoConstraints = false
		label.translatesAutoresizingMaskIntoConstraints = false
		buttom.translatesAutoresizingMaskIntoConstraints = false
		
		self.addSubview(label)
		self.addSubview(buttom)
		
		NSLayoutConstraint.activate([
			label.topAnchor.constraint(equalTo: self.topAnchor),
			label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			])
		
		NSLayoutConstraint.activate([
			buttom.topAnchor.constraint(equalTo: label.bottomAnchor,
										constant: 20),
			buttom.leadingAnchor.constraint(equalTo: self.leadingAnchor),
			buttom.trailingAnchor.constraint(equalTo: self.trailingAnchor),
			buttom.heightAnchor.constraint(equalToConstant: 60)
		])
		
		bottomAnchor.constraint(equalTo: buttom.bottomAnchor).isActive = true
	}
	
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
