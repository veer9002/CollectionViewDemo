//
//  CustomCVC.swift
//  CollectionViewDemo
//
//  Created by Syon on 22/11/18.
//  Copyright © 2018 Syon. All rights reserved.
//

import UIKit

class CustomCVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let arrayTitle = ["lbl1","lbl2","lbl3","lbl4","lbl5","lbl6","lbl7","lbl8"]
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}


extension CustomCVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCell
        cell.lbl1.text = arrayTitle[indexPath.row]
        cell.lbl2.text = arrayTitle[indexPath.row]
        cell.lbl3.text = arrayTitle[indexPath.row]
        return cell
    }
}

extension CustomCVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/2, height: 273)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
