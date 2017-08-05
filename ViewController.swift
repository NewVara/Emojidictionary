//
//  ViewController.swift
//  EmojiDict2
//
//  Created by Vimal Ranchhod on 2017/07/30.
//  Copyright © 2017 Vimal Ranchhod. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var cooltableview: UITableView!
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cooltableview.dataSource = self
        cooltableview.delegate = self
        emojis = makeEmojiArry()
        
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArry() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🤗"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "smiley face"
   
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🤢"
        emoji2.birthYear = 2013
        emoji2.category = "I just puked"
        emoji2.definition = "smiley face"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.birthYear = 2012
        emoji3.category = "Clown"
        emoji3.definition = "smiley face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😡"
        emoji4.birthYear = 2004
        emoji4.category = "Smiley"
        emoji4.definition = "Angry face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "☹️"
        emoji5.birthYear = 2005
        emoji5.category = "Smiley"
        emoji5.definition = "Sad Face"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "👹"
        emoji6.birthYear = 2003
        emoji6.category = "Smiley"
        emoji6.definition = "Gremlin"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6]
        
        
    }

}

