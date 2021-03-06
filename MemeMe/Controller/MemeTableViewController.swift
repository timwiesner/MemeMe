//
//  MemeTableViewController.swift
//  MemeMe
//
//  Created by Tim Wiesner on 1/3/19.
//  Copyright © 2019 Tim Wiesner. All rights reserved.
//

import Foundation
import UIKit

// MARK: MemeTableViewController: UITableViewController
class MemeTableViewController: UITableViewController {
    
    //    MARK: Outlets
    @IBOutlet weak var memeTableView: UITableView!
    
    var memes: [Meme]! {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.memes
    }
    
    //    MARK: Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        tableView!.reloadData()
    }
    
    //    MARK: Table View Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath) as! MemeTableViewCell
        let meme = memes[(indexPath as NSIndexPath).row]
        cell.populateCell(meme)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let memeDetailController = storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        memeDetailController.meme = memes[(indexPath as NSIndexPath).row]
        navigationController!.pushViewController(memeDetailController, animated: true)
    }
}
