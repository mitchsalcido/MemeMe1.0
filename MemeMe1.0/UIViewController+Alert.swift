//
//  UIViewController+Alert.swift
//  PitchPerfect
//
//  Created by 1203 Broadway on 5/11/21.
//
/*
 About UIViewController+Alert.swift
 Extension to include UIAlertController creation using LocalizedError info
 */

import UIKit

extension UIViewController {
    
    // create/show and alert using LocalizedError properties
    func showAlert(_ error: LocalizedError) {

        // verify good alert info
        let alertTitle = error.errorDescription ?? "Unknown Error"
        let alertMessage = error.recoverySuggestion ?? "Try closing app and restaring"
        let actionTitle = error.helpAnchor ?? "Dismiss"

        let alert = UIAlertController(title: alertTitle,
                                      message: alertMessage,
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: actionTitle, style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
