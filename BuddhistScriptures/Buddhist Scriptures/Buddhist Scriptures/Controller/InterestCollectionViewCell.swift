//
//  InterestCollectionViewCell.swift
//  Buddhist Scriptures
//
//  Created by Arin Waichulis on 5/14/20.
//  Copyright © 2020 Slushbox. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    
    
    var interest: Interest! {
        didSet {
            self.updateUI()
        }
    }
    
    
    
    func updateUI() {
        if let interest = interest {
            featuredImageView.image = interest.featuredImage
            interestTitleLabel.text = interest.title
            backgroundColorView.backgroundColor = interest.color
        } else {
            featuredImageView.image = nil
            interestTitleLabel.text = nil
            backgroundColorView.backgroundColor = nil
        }
        
        
        backgroundColorView.layer.cornerRadius = 10.0
        backgroundColorView.layer.masksToBounds = true
        featuredImageView.layer.cornerRadius = 10.0
        featuredImageView.layer.masksToBounds = true
    }
}
