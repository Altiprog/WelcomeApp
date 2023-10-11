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
 
        title = "\(user.person.name) \(user.person.surname)"
    
        textAbout.text = user.person.bio
      
        view.backgroundColor = .darkGray
    }

}
