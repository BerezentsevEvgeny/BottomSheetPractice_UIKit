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
        presentSheet()
    }
    
    
    private func presentSheet() {
        let sheetViewController = UINavigationController(rootViewController: SheetViewController())
        if let sheet = sheetViewController.sheetPresentationController {
            sheet.detents = [.medium(),.large()]
            sheet.prefersGrabberVisible = true
            sheet.preferredCornerRadius = 30
            sheet.delegate = self
//            sheet.largestUndimmedDetentIdentifier = .large
        }
        present(sheetViewController, animated: true) {
            print("Do something on appear")
        }
        
    }
    
    
}

extension MainViewController: UISheetPresentationControllerDelegate {
    func sheetPresentationControllerDidChangeSelectedDetentIdentifier(_ sheetPresentationController: UISheetPresentationController) {
        print("presentation changed")

    }
}



