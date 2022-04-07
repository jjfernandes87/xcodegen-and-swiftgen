//
//  TransfersView.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import Foundation
import UIKit

protocol TransferViewDelegate: AnyObject {
	
	func didPressChooseContactButton()
    func didPressTransferButton()
    func didAmountChange(value: String)
}

final class TransfersView: UIView {
	
	weak var delegate: TransferViewDelegate?
	
	private let stackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.axis = .vertical
		stackView.spacing = 8
		
		return stackView
	}()
	
	private let amountTextField: UITextField = {
		
		let textField = UITextField()
        textField.placeholder = Localization.Components.TransfersView.amountTextField
		textField.font = UIFont.boldSystemFont(ofSize: 34)
		textField.textAlignment = .center
		textField.keyboardType = .decimalPad
		return textField
	}()
	
	private let chooseContactButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(Localization.Components.TransfersView.chooseContactButton, for: .normal)
		button.setTitleColor(.systemBlue, for: .normal)
        button.addTarget(TransfersView.self, action: #selector(chooseContact), for: .touchUpInside)
		return button
	}()
	
	private let transferButton: UIButton = {
		let button = UIButton()
		button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(Localization.Components.TransfersView.transferButton, for: .normal)
		button.setTitleColor(.white, for: .normal)
		button.backgroundColor = .systemBlue
		button.layer.cornerRadius = 14
        button.addTarget(TransfersView.self, action: #selector(transfer), for: .touchUpInside)
		return button
	}()
	
	init(amountDidChange: ((String) -> Void)? = nil) {
		super.init(frame: .zero)

		backgroundColor = .white
		
		stackView.addArrangedSubview(amountTextField)
		stackView.addArrangedSubview(chooseContactButton)
		
		addSubview(stackView)
		addSubview(transferButton)
		
		NSLayoutConstraint.activate([
			stackView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
			stackView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
			
			transferButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -16),
			transferButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
			transferButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
			transferButton.heightAnchor.constraint(equalToConstant: 56)
		])

        NotificationCenter.default.addObserver(self, selector: #selector(textDidChange), name: UITextField.textDidChangeNotification, object: nil)
	}
	
	@objc
	func chooseContact() {
		delegate?.didPressChooseContactButton()
	}
	
	@objc
	func transfer() {
		delegate?.didPressTransferButton()
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError(Localization.Generic.fatalError)
	}
}

extension TransfersView {
    @objc private func textDidChange() {
        guard let value = amountTextField.text else { return }
        delegate?.didAmountChange(value: value)
    }
}
