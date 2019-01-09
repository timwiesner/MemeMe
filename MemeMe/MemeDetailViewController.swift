//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Tim Wiesner on 1/9/19.
//  Copyright © 2019 Tim Wiesner. All rights reserved.
//

import Foundation
import UIKit

class MemeDetailViewController: UIViewController {
    
    @IBOutlet weak var memedImageView: UIImageView!
    
    var meme: Meme?
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        memedImageView.image = meme?.memedImage
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        memedImageView.image = meme?.memedImage
    }
}
