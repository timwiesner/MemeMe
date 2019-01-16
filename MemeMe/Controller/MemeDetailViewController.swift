//
//  MemeDetailViewController.swift
//  MemeMe
//
//  Created by Tim Wiesner on 1/9/19.
//  Copyright © 2019 Tim Wiesner. All rights reserved.
//

import Foundation
import UIKit

// MARK: MemeDetailViewController: UIViewController
class MemeDetailViewController: UIViewController {
    
    //    MARK: Outlets
    @IBOutlet weak var memedImageView: UIImageView!
    
    var meme: Meme?
    
    //    MARK: Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        memedImageView.image = meme?.memedImage
    }
}
