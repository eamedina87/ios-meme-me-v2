//
//  MemeCollectionViewController.swift
//  mememev2
//
//  Created by Erick Medina on 18/8/18.
//  Copyright © 2018 Erick Medina. All rights reserved.
//

import UIKit

class MemeCollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    var memes = [Meme]()
    
    override func viewWillAppear(_ animated: Bool) {
        memes = (UIApplication.shared.delegate as! AppDelegate).memes
        collectionView.reloadData()
        collectionView.refreshControl?.endRefreshing()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "memeDetail") as! MemeDetailViewController
        destinationVC.meme = memes[indexPath.row].memedImage
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeCollectionCell", for: indexPath) as! CollectionCell
        let meme = memes[indexPath.row]
        cell.cellImage.image = meme.memedImage
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    
    

}
