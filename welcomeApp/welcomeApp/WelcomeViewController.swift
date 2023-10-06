//
//  FinalViewController.swift
//  welcomeApp
//
//  Created by Александр Тиунович on 6.10.23.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var lableOut: UILabel!
    
    var receivedUserName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let receive = receivedUserName {
            lableOut.text = "Welcome \(receive)"
        }
    }

    @IBAction func returePressed() {
    }
}
