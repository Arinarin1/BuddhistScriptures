//
//  InterestViewController.swift
//  Buddhist Scriptures
//
//  Created by Arin Waichulis on 5/14/20.
//  Copyright © 2020 Slushbox. All rights reserved.
//

import UIKit

class InterestViewController : UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var interests = Interest.fetchInterests()
    let cellScale: CGFloat = 0.9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScale)
        let cellHeight = floor(screenSize.height * cellScale)
        let insetX = (view.bounds.width - cellWidth) / 3.0
        let insetY = (view.bounds.height - cellHeight) / 3.0
        
        let layout = collectionView!.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        collectionView.contentInset = UIEdgeInsets(top: insetY, left: insetX, bottom: insetY, right: insetX)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
     
}

extension InterestViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterestCollectionViewCell", for: indexPath) as! InterestCollectionViewCell
        
        let interest = interests[indexPath.item]
        cell.interest = interest
       // print("Cell reads: \(cell)")
        print("\(indexPath.item)")
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let section = interests[indexPath.row]
        // do stuff with image, or with other data that you need
        
        if indexPath.item == 0 {
            print("Cell 1 tapped!")
        }
        if indexPath.item == 1 {
               print("Cell 2 tapped!")
           }
        if indexPath.item == 2 {
            print("Cell 3 tapped!")
        }
        if indexPath.item == 3 {
            print("Cell 4 tapped!")
        }
        if indexPath.item == 4 {
            print("Cell 5 tapped!")
        }
        if indexPath.item == 5 {
            print("Cell 6 tapped!")
        }
        if indexPath.item == 6 {
            print("Cell 7 tapped!")
        }
        if indexPath.item == 7 {
            print("Cell 8 tapped!")
        }
        
    }
}

extension InterestViewController : UIScrollViewDelegate, UICollectionViewDelegate {
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout = self.collectionView?.collectionViewLayout as! UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width + layout.minimumLineSpacing
        
        var offset = targetContentOffset.pointee
        let index = (offset.x + scrollView.contentInset.left) / cellWidthIncludingSpacing
        let roundedIndex = round(index)
        
        offset = CGPoint(x: roundedIndex * cellWidthIncludingSpacing - scrollView.contentInset.left, y: scrollView.contentInset.top)
        targetContentOffset.pointee = offset
    }
    
}
