//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Денис on 03.02.2023.
//

import Foundation
import UIKit

protocol AlertPresenterProtocol {
    func show(result: AlertModel)
    var delegate: UIViewController? {get set}
}

class AlertPresenter: AlertPresenterProtocol {
    weak var delegate: UIViewController?
    func show(result: AlertModel) {
        let alert = UIAlertController( title: result.title,
                                       message: result.message,
                                       preferredStyle: .alert)
        let action = UIAlertAction(title: result.buttonText, style: .default) { _ in
            result.completion()
        }
        alert.addAction(action)
        showAlert(alert)
    }
    
        func showAlert(_ alert: UIAlertController) {
            delegate?.present(alert,animated: true, completion: nil)
        }
    
}