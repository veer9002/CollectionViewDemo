//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Syon on 21/11/18.
//  Copyright © 2018 Syon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var dataArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataArray = [UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),
                     UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),
                     UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),
                     UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),
                     UIImage(named: "1"),
                     UIImage(named: "2"),
                     UIImage(named: "3"),
                     UIImage(named: "4"),
                     UIImage(named: "5")
            ] as! [UIImage]
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        cell.imgView.image = dataArray[indexPath.row]
        return cell
    }
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/3 - 2, height: collectionWidth/3 - 2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}

