//
//  ViewController.swift
//  welcomeApp
//
//  Created by Александр Тиунович on 6.10.23.
//

import UIKit

final class ViewController: UIViewController {
    //MARK: -
    @IBOutlet weak var UserNameOut: UITextField!
    @IBOutlet weak var passwordOut: UITextField!
    
    @IBOutlet weak var loginOut: UIButton!
    
    let name = "Tim"
    let password = "123"
    //MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginOut.layer.cornerRadius = 10
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard UserNameOut.text == name, passwordOut.text == password else {
            showAlert(with: "Oops", and: "Wrong Username or password", clear: (passwordOut))
            UserNameOut.text = ""
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingsVC = segue.destination as? WelcomeViewController {
            settingsVC.receivedUserName = name
        }
    }
    
    //MARK: -
    @IBAction func logInPressed() {
    }
    
    @IBAction func forgotYourNamePressed() {
        showAlert(with: "Oops!", and: "Your name is '\(name)' 😊", clear: UserNameOut)
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(with: "Oops!", and: "Your password is  '\(password)' 😊 ", clear: passwordOut)
    }
    
    @IBAction func unvind(for segue: UIStoryboardSegue) {
        UserNameOut.text = ""
        passwordOut.text = ""
    }
}
//MARK: -
extension ViewController {
    
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

