//
//  Label + Extension.swift
//  iChat
//
//  Created by Alexander Airumyan on 23.08.2021.
//

import UIKit

extension UILabel {
	
	convenience init(text: String,
					 font: UIFont? = .avenir20()){
		self.init()
		
		self.text = text
		self.font = font
	}
}
