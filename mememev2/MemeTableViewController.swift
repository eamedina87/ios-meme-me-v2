//
//  MemeTableViewController.swift
//  mememev2
//
//  Created by Erick Medina on 18/8/18.
//  Copyright © 2018 Erick Medina. All rights reserved.
//

import UIKit

class MemeTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var memes = [Meme]()
    
    override func viewWillAppear(_ animated: Bool) {
        memes = (UIApplication.shared.delegate as! AppDelegate).memes
        print(memes.count)
        tableView.reloadData()
        tableView.refreshControl?.endRefreshing()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeTableCell", for: indexPath) as! TableCell
        let meme = memes[indexPath.row]
        cell.cellImage.image = meme.memedImage
        cell.cellTitle.text = meme.getTableString()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "memeDetail") as! MemeDetailViewController
        destinationVC.meme = memes[indexPath.row].memedImage
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

