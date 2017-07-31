//
//  DefinitionViewController.swift
//  EmojiDict2
//
//  Created by Vimal Ranchhod on 2017/07/31.
//  Copyright © 2017 Vimal Ranchhod. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🤗"{
        
        definitionLabel.text = "A huge hug"
    }
        if emoji == "🤢"{
            
            definitionLabel.text = "I just puked"
        }
        if emoji == "🤡"{
            
            definitionLabel.text = "Clown"
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
