//
//  SheetViewController.swift
//  BottomSheet
//
//  Created by Евгений Березенцев on 21.12.2021.
//

import UIKit

class SheetViewController: UIViewController {
    
    let newButton: UIButton = {
        let button = UIButton()
        button.setTitle("Confirm", for: .normal)
        button.configuration = .filled()
        button.configuration?.buttonSize = .medium
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(dismissSheet), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Your order"
        setConstraints()
    }
    
    private func setConstraints() {
        view.addSubview(newButton)
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            newButton.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 35),
            newButton.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -35),
            newButton.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -10)
        ])
    }
    
    @objc func dismissSheet() {
        dismiss(animated: true) {
            print("Do something after confirmation")
            
            
        }
    }
    

}




