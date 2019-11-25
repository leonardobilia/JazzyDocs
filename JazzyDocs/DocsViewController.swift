//
//  DocsViewController.swift
//  JazzyDocs
//
//  Created by Leonardo Ferreira Bilia on 24/11/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import UIKit

/// This is a class created for presenting the benefits for using Jazzy
class DocsViewController: UIViewController {

    var titleLabel = UILabel()
    var subtitleLabel = UILabel()
    var closeButton = UIButton()
    var alertButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCloseButton(systemName: "xmark.circle.fill")
        setupTitleLabel(with: "Documentation for Swift and Objective-c project using Jezzy")
        setupSubtitleLabel(with: "How amazing it would be if we could simply focus on writing code and at the same time have all our project's documentation beautifully created automatically. Even better if it could have the same feel and style of Apple's official documentation.\n\nThat's completely possible using Jezzy!")
        setupAlertButton(with: "Present Alert")
        setupUI()
    }
    
    // MARK: - Setup Methods
    
    /**
     Call this method for setting up the title label.
     - Parameters:
        - text: Define the text for the label
     
     Usage:
     ```
     setupTitleLabel(with: "Documentation for Swift and Objective-c project using Jezzy")
     ```
    */
    func setupTitleLabel(with text: String) {
        titleLabel.text = text
        titleLabel.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        titleLabel.numberOfLines = 0
        titleLabel.textColor = .label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /**
     Call this method for setting up the subtitle label.
     - Parameters:
        - text: Define the text for the label
     
     Usage:
     ```
     setupSubtitleLabel(with: "How amazing it would be if we could simply focus on writing code and at the same time have all our project's documentation beautifully created automatically. Even better if it could have the same feel and style of Apple's official documentation.\n\nThat's completely possible using Jezzy!")
     ```
    */
    func setupSubtitleLabel(with text: String) {
        subtitleLabel.text = text
        subtitleLabel.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        subtitleLabel.numberOfLines = 0
        subtitleLabel.textColor = .label
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /**
     Call this method for setting up the dismiss button.
     - Parameters:
        - systemName: Define an image icon from SF Symbols
     
     Usage:
     ```
     setupCloseButton(systemName: "xmark.circle.fill")
     ```
    */
    func setupCloseButton(systemName: String) {
        closeButton.setImage(UIImage(systemName: systemName, withConfiguration: UIImage.SymbolConfiguration(pointSize: 24, weight: .bold)), for: .normal)
        closeButton.tintColor = .label
        closeButton.addTarget(self, action: #selector(closeButtonAction), for: .touchUpInside)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /**
     Call this method for setting up the alert button.
     - Parameters:
        - title: This define the button title
     
     Usage:
     ```
     setupAlertButton(with: "Present Alert")
     ```
    */
    func setupAlertButton(with title: String) {
        alertButton.setTitle(title, for: .normal)
        alertButton.setTitleColor(.systemBlue, for: .normal)
        alertButton.addTarget(self, action: #selector(alertButtonAction), for: .touchUpInside)
        alertButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK: - Actions
    
    /// Dismiss the DocsViewController
    @objc func closeButtonAction() {
        dismiss(animated: true, completion: nil)
    }
    
    /// Present simple alert
    @objc func alertButtonAction() {
        AlertHandler.present(self, title: "Hello Jazzy", message: "This is just a custom alert to tell you how much Jazzy makes our lives easier") { (buttonTapped) in
            print("The ok button was tapped")
        }
    }
}

// MARK: - UI

extension DocsViewController {

    /**
     Handle all the UI components sizes and positioning for DocsViewController
     - Note: This is how you can add notes to the documentation
     - Warning: This is an example of adding warning to the documentation.
    */
    
    func setupUI() {
        /// Set the background color for the view controller
        view.backgroundColor = .systemBackground
        
        /// Add components to the view's subview
        view.addSubview(closeButton)
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(alertButton)
        
        /// Set conctraints for all the components
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            titleLabel.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 32),
            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            alertButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            alertButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
}
