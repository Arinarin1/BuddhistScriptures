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
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var featuredButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        featuredButton.setTitleColor(UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 1), for: .normal)
        featuredButton.backgroundColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.15)
        featuredButton.layer.cornerRadius = 9
        featuredButton.layer.borderColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.8).cgColor
        featuredButton.layer.borderWidth = 3.0
        
        quoteButton.setTitleColor(UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 1), for: .normal)
        quoteButton.backgroundColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.15)
        quoteButton.layer.cornerRadius = 9
        quoteButton.layer.borderColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.8).cgColor
        quoteButton.layer.borderWidth = 3.0
        
        button3.setTitleColor(UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 1), for: .normal)
        button3.layer.cornerRadius = 9
        button3.backgroundColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.15)
        button3.layer.borderColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.8).cgColor
        button3.layer.borderWidth = 3.0
        
        button4.setTitleColor(UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 1), for: .normal)
        button4.backgroundColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.15)
        button4.layer.cornerRadius = 9
        button4.layer.borderColor = UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.8).cgColor
        button4.layer.borderWidth = 3.0
        
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
            
            // set NSUserDefault key
            UserDefaults.standard.set(0, forKey: "Key")
            
            // change to scripture view controller
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
            
        }
        if indexPath.item == 1 {
            UserDefaults.standard.set(1, forKey: "Key")
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
            
        }
        if indexPath.item == 2 {
            UserDefaults.standard.set(2, forKey: "Key")
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
        }
        if indexPath.item == 3 {
            UserDefaults.standard.set(3, forKey: "Key")
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
        }
        if indexPath.item == 4 {
            UserDefaults.standard.set(4, forKey: "Key")
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
        }
        if indexPath.item == 5 {
            UserDefaults.standard.set(5, forKey: "Key")
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
        }
        if indexPath.item == 6 {
            UserDefaults.standard.set(6, forKey: "Key")
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
        }
        if indexPath.item == 7 {
            UserDefaults.standard.set(7, forKey: "Key")
            
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ScriptureViewController") as! ScriptureViewController
            self.present(vc, animated: true, completion: nil)
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
