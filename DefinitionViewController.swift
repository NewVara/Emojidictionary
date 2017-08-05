//
//  DefinitionViewController.swift
//  EmojiDict2
//
//  Created by Vimal Ranchhod on 2017/07/31.
//  Copyright © 2017 Vimal Ranchhod. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "BirthYear : \(emoji.birthYear)"
        categoryLabel.text = "Category : \(emoji.category)"
        definitionLabel.text = emoji.definition
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
