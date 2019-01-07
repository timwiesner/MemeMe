//
//  SentMemesTableViewController.swift
//  MemeMe
//
//  Created by Tim Wiesner on 1/3/19.
//  Copyright © 2019 Tim Wiesner. All rights reserved.
//

import Foundation
import UIKit

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SentMemeCell", for: indexPath)
        
        let meme = memes[(indexPath as NSIndexPath).row]
        
        cell.imageView?.image = meme.memedImage
        
        return cell
    }
}