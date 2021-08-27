//
//  UIImageView + Extension.swift
//  iChat
//
//  Created by Alexander Airumyan on 23.08.2021.
//

import UIKit

extension UIImageView {
	convenience init(image: UIImage?, contentMode: UIView.ContentMode){
		self.init()
		
		self.image = image
		self.contentMode = contentMode
	}
}
