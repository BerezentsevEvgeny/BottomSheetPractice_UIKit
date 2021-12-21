//
//  ViewController.swift
//  BottomSheet
//
//  Created by Евгений Березенцев on 21.12.2021.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func presentSheetButtonTapped(_ sender: Any) {
        let sheetViewController = UINavigationController(rootViewController: SheetViewController())
        if let sheet = sheetViewController.sheetPresentationController {
            sheet.detents = [.medium(),.large()]
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 30
            sheet.largestUndimmedDetentIdentifier = .large
        }
        present(sheetViewController, animated: true)
    }
    
}

