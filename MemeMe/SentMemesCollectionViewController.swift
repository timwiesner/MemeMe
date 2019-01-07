//
//  SentMemesCollectionViewController.swift
//  MemeMe
//
//  Created by Tim Wiesner on 1/3/19.
//  Copyright © 2019 Tim Wiesner. All rights reserved.
//

import Foundation
import UIKit

class SentMemesCollectionViewController: UICollectionViewController {
    var memes: [Meme]! {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
}
