//
//  HomeViewController.swift
//  JazzyDocs
//
//  Created by Leonardo Ferreira Bilia on 24/11/19.
//  Copyright © 2019 Leonardo Bilia. All rights reserved.
//

import UIKit

/// This is a home controller for the application
class HomeViewController: UIViewController {

    var backgroundImageView = UIImageView()
    var logoImageView = UIImageView()
    var getStartedButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupBackgroundImage(with: "home_image")
        setupLogo()
        setupGetStatedButton()
        setupUI()
    }
    
    // MARK: - Setup Methods
    
    /**
     Background image base setup
     - Parameters:
        - imageName: Define the image name for the background
     
     Usage:
     ```
     setupBackgroundImage(with: "home_image")
     ```
     
     - Note: It's important to have the image named correctly and  added to the assets catalog
    */
    func setupBackgroundImage(with imageName: String) {
        backgroundImageView.image = UIImage(named: imageName)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /// Logo image base setup
    func setupLogo() {
        logoImageView.image = UIImage(named: "codableme_logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    /**
     Get Started button base setup
     - Defined Properties:
        - Title
        - Title color
        - Title Font
        - Background color
        - Corner radius
        - Mask to bounds
        - Target
    */
    func setupGetStatedButton() {
        getStartedButton.setTitle("Get Started", for: .normal)
        getStartedButton.setTitleColor(.white, for: .normal)
        getStartedButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        getStartedButton.backgroundColor = UIColor.systemBlue
        getStartedButton.layer.cornerRadius = 27
        getStartedButton.layer.masksToBounds = true
        getStartedButton.addTarget(self, action: #selector(getStartedButtonAction), for: .touchUpInside)
        getStartedButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK: - Actions
    
    /// Presents the DocsViewController
    @objc func getStartedButtonAction() {
        present(DocsViewController(), animated: true)
    }
}

// MARK: - UI

extension HomeViewController {

    /**
     Handle all the UI components sizes and positioning for HomeViewController
     - Note: This is how you can add notes to the documentation
     - Warning: This is an example of adding warning to the documentation.
    */
    
    func setupUI() {
        /// Set the background color for the view controller
        view.backgroundColor = .systemBackground
        
        /// Add components to the view's subview
        view.addSubview(backgroundImageView)
        view.addSubview(logoImageView)
        view.addSubview(getStartedButton)
        
        /// Set conctraints for all the components
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logoImageView.widthAnchor.constraint(equalToConstant: 128),
            logoImageView.heightAnchor.constraint(equalToConstant: 74),
            getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            getStartedButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            getStartedButton.widthAnchor.constraint(equalToConstant: 235),
            getStartedButton.heightAnchor.constraint(equalToConstant: 54)
        ])
    }
}
