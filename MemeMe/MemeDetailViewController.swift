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
    
    var meme: Meme?
    
    @IBOutlet var memedImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memedImageView.image = meme?.memedImage
    }
}
