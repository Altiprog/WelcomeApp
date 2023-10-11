//
//  BioViewController.swift
//  welcomeApp
//
//  Created by Александр Тиунович on 11.10.23.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var surnameLable: UILabel!
    
    @IBOutlet weak var companyName: UILabel!
    
    @IBOutlet weak var positionLable: UILabel!
    
    @IBOutlet weak var departmentlable: UILabel!
    
    var user = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(user.person.name) \(user.person.surname)"

        view.backgroundColor = .darkGray
        
        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        
        photoImageView.image = UIImage(named: user.person.photo)
        nameLable.text = user.person.name
        surnameLable.text = user.person.surname
        companyName.text = user.person.job
        positionLable.text = user.person.position
        departmentlable.text = user.person.departmant
        
        
        
        
    }
    


}
