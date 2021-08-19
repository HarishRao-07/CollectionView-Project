//
//  SecondViewController.swift
//  collectionViewProject
//
//  Created by rd on 19/08/21.
//  Copyright © 2021 vishnu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var lable2: UILabel!
    
    var mainImage : UIImage!
    var mainLabel : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageView2.image = mainImage
        lable2.text = mainLabel
    }
    


}
