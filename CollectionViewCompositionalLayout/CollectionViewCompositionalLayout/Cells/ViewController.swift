//
//  ViewController.swift
//  CollectionViewCompositionalLayout
//
//  Created by 123 on 14.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    var orderButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Make an order", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        setUpViews()
        setConstraints()
    }
    
}

//MARK: SetUpWievs and constraints

extension ViewController {
    private func setUpViews() {
        view.backgroundColor = .white
        title = "Food Shop"
        
        view.addSubview(orderButton)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            orderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orderButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            orderButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            orderButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1)
        ])
    }
}

