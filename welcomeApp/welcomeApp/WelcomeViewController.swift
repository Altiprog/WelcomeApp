//
//  FinalViewController.swift
//  welcomeApp
//
//  Created by Александр Тиунович on 6.10.23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var lableAut: UILabel!
    
    var receivedUserName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
            gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.gray.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)

        if let receive = receivedUserName {
            lableAut.text = "Welcome \(receive)"
        }
    }

    @IBAction func returePressed() {
    }
}
