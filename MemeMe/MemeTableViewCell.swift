//
//  MemeTableViewCell.swift
//  MemeMe
//
//  Created by Tim Wiesner on 1/9/19.
//  Copyright © 2019 Tim Wiesner. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {
    
    //    MARK: Outlets
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var memeTopText: UILabel!
    @IBOutlet weak var memeBottomText: UILabel!
    
    //    MARK: Populate Table Cell
    func populateCell(_ meme: Meme) {
        memeImageView.image = meme.memedImage
        memeTopText.text = meme.topText
        memeBottomText.text = meme.bottomText
    }
    
}
