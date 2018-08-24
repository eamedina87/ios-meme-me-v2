//
//  MemeDetailViewController.swift
//  mememev2
//
//  Created by Erick Medina on 21/8/18.
//  Copyright © 2018 Erick Medina. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {

    var meme : UIImage? = nil
    
    @IBOutlet weak var memeImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        if let meme = meme {
            memeImageView.image = meme
            memeImageView.contentMode = .scaleAspectFit
        }
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
