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
            // black
            Interest(title: "Hello. This is the first Buddhist scriptures lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
            // purple
            Interest(title: "2nd Reading", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 105/255.0, green: 80/255.0, blue: 227/255.0, alpha: 0.8)),
           // orange
            Interest(title: "3rd Lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
            // black
            Interest(title: "4th Lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8)),
           // red
            Interest(title: "Hello. 5th Lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 245/255.0, green: 62/255.0, blue: 40/255.0, alpha: 0.8)),
            // green
            Interest(title: "Hello. 6th Lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 103/255.0, green: 217/255.0, blue: 87/255.0, alpha: 0.8)),
            // black
            Interest(title: "Hello. 7th Lesson", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 88/255.0, alpha: 0.8)),
            // light orange
            Interest(title: "More added every month!", featuredImage: UIImage(named: "background1")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8))
        
        ]
    }
    
}
