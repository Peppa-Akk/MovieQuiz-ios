import Foundation
import UIKit

class AlertPresenter {
    func showAlert(in vc: UIViewController, model: AlertModel) {
        let alert = UIAlertController(
            title: model.title,
            message: model.message,
            preferredStyle: .alert)

        alert.view.accessibilityIdentifier = "Game Results"

        let action = UIAlertAction(title: model.buttonText, style: .default) { _ in
            model.completion()
        }

        alert.addAction(action)

        vc.present(alert, animated: true, completion: nil)
    }
}
