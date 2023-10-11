//
//  AboutViewController.swift
//  welcomeApp
//
//  Created by Александр Тиунович on 11.10.23.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var textAbout: UITextView!
    
    let user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
            gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.white.cgColor, UIColor.gray.cgColor]
            gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)

            view.layer.insertSublayer(gradientLayer, at: 0)
 
        title = "\(user.person.name) \(user.person.surname)"
    
        textAbout.text = user.person.bio
     
    }

}
