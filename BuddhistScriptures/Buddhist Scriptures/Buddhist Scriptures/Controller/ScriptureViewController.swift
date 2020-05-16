//
//  ViewController.swift
//  Buddhist Scriptures
//
//  Created by Arin Waichulis on 5/14/20.
//  Copyright © 2020 Slushbox. All rights reserved.
//

import UIKit

class ScriptureViewController: UIViewController {

    @IBOutlet weak var scriptureTitle: UILabel!
    @IBOutlet weak var scriptureImage: UIImageView!
    @IBOutlet weak var scriptureText: UILabel!
    @IBOutlet weak var homeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.integer(forKey: "Key") == 0 {
            scriptureTitle.text = "First Reading"
        }
        if UserDefaults.standard.integer(forKey: "Key") == 1 {
            scriptureTitle.text = "Second Reading"
        }
        if UserDefaults.standard.integer(forKey: "Key") == 2 {
                   scriptureTitle.text = "Third Reading"
        }
        if UserDefaults.standard.integer(forKey: "Key") == 3 {
            scriptureTitle.text = "Forth Reading"
        }
        if UserDefaults.standard.integer(forKey: "Key") == 4 {
            scriptureTitle.text = "Fifth Reading"
        }
        if UserDefaults.standard.integer(forKey: "Key") == 5 {
            scriptureTitle.text = "Sixth Reading"
        }
        if UserDefaults.standard.integer(forKey: "Key") == 6 {
            scriptureTitle.text = "Seventh Reading"
        }
        
        
    }


}

