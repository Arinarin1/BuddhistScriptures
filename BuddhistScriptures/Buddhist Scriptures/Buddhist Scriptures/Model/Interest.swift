//
//  Interest.swift
//  Buddhist Scriptures
//
//  Created by Arin Waichulis on 5/14/20.
//  Copyright © 2020 Slushbox. All rights reserved.
//

import UIKit

class Interest {
    
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color:UIColor) {
        
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }

    static func fetchInterests() -> [Interest] {
        
        return [
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8))
        
        ]
    }
    
}
