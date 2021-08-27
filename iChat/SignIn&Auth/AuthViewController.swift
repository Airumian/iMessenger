//
//  AuthViewController.swift
//  iChat
//
//  Created by Alexander Airumyan on 21.08.2021.
//

import UIKit

class AuthViewController: UIViewController {
	
	let logoImageView = UIImageView(image: #imageLiteral(resourceName: "Logo"),
									contentMode: .scaleAspectFit)
	
	let googleLabel = UILabel(text: "Get started with")
	let emailLabel = UILabel(text: "Or sign up with")
	let alreadyOnboardLabel = UILabel(text: "Already onboard?")
	
	let emailButtom = UIButton(title: "Email",
							   titleColor: .white,
							   backgroundColor: .buttomDark(),
							   isShadow: false)
	
	let loginButtom = UIButton(title: "Login",
							   titleColor: .buttomRed(),
							   backgroundColor: .white)
	
	let googleButtom = UIButton(title: "Google",
								titleColor: .black,
								backgroundColor: .white)
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		googleButtom.customizeGoogleButton()
		view.backgroundColor = .white
		setupConstraints()
	}
	
	
}

//MARK: - Setup Constraints
extension AuthViewController {
	private func setupConstraints() {
		logoImageView.translatesAutoresizingMaskIntoConstraints = false
		
		let googleView = ButtonFormView(label: googleLabel,
										buttom: googleButtom)
		let emailView = ButtonFormView(label: emailLabel,
									   buttom: emailButtom)
		let loginView = ButtonFormView(label: alreadyOnboardLabel,
									   buttom: loginButtom)
		
		let stackView = UIStackView(arrangedSubviews: [googleView,emailView,loginView],
									axis: .vertical,
									spacing: 40)
		stackView.translatesAutoresizingMaskIntoConstraints = false
		
		
		view.addSubview(logoImageView)
		view.addSubview(stackView)
		
		NSLayoutConstraint.activate([
			logoImageView.topAnchor.constraint(equalTo: view.topAnchor,
											   constant: 160),
			logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
		])
		
		NSLayoutConstraint.activate([
			stackView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor,
										   constant: 160),
			stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor,
											   constant: 40),
			stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,
												constant: -40)
		])
	}
}

//MARK: - SwiftUI
import SwiftUI

struct AuthVCProvider: PreviewProvider {
	static var previews: some View {
		ContainerView().edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
	}
	
	struct ContainerView: UIViewControllerRepresentable {
		
		let viewController = AuthViewController()
		
		func makeUIViewController(context:UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) -> AuthViewController {
			return viewController
		}
		
		func updateUIViewController(_ uiViewController: AuthVCProvider.ContainerView.UIViewControllerType,
									context: UIViewControllerRepresentableContext<AuthVCProvider.ContainerView>) {
		}
	}
}
