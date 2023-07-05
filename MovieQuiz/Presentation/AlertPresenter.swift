import Foundation
import UIKit

protocol AlertPresenterProtocol {
    func showAlert(alertModel: AlertModel)
}

final class AlertPresenter: AlertPresenterProtocol {
    private weak var viewConroller: UIViewController?
    
    init(viewConroller: UIViewController? = nil) {
        self.viewConroller = viewConroller
    }
    
    func showAlert(alertModel: AlertModel) {
        let alert = UIAlertController(
            title: alertModel.title,
            message: alertModel.message,
            preferredStyle: .alert)

        alert.view.accessibilityIdentifier = "Game Results"

        let action = UIAlertAction(title: alertModel.buttonText, style: .default) { _ in
            alertModel.completion()
        }

        alert.addAction(action)
        
        
        viewConroller?.present(alert, animated: true)
    }
}
