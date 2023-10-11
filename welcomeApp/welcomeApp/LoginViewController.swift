//
//  ViewController.swift
//  welcomeApp
//
//  Created by Александр Тиунович on 6.10.23.
//

import UIKit

final class LoginViewController: UIViewController {
    //MARK: -
    @IBOutlet weak var UserNameOut: UITextField!
    @IBOutlet weak var passwordOut: UITextField!
    
    @IBOutlet weak var loginOut: UIButton!
    
    private let user = User.getUser()
    
    //MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
            gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.gray.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        
        loginOut.layer.cornerRadius = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard UserNameOut.text ==  user.person.name, passwordOut.text ==  user.password else {
            showAlert(with: "Oops", and: "Wrong Username or password", clear: (passwordOut))
            UserNameOut.text = ""
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarController = segue.destination as? UITabBarController,
           let viewControllers = tabBarController.viewControllers {
            for viewController in viewControllers {
                if let welcomeViewController = viewController as? WelcomeViewController {
                    welcomeViewController.receivedUserName = "\(user.person.name) \(user.person.surname)"
                }
            }
        }
    }
    //MARK: -
    @IBAction func logInPressed() {
    }
    
    @IBAction func forgotYourNamePressed() {
        showAlert(with: "Oops!", and: "Your name is '\( user.person.name)' 😊", clear: UserNameOut)
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oops!", and: "Your password is  '\( user.password)' 😊 ", clear: passwordOut)
    }
    
    @IBAction func unvind(for segue: UIStoryboardSegue) {
        UserNameOut.text = ""
        passwordOut.text = ""
    }
}
//MARK: -
extension LoginViewController {
    
    private func showAlert(with title: String, and message: String, clear: UITextField) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            clear.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
//MARK: -

