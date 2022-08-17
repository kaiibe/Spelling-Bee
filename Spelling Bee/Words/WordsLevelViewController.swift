//
//  WordsLevelViewController.swift
//  Spelling Bee
//
//  Created by Homidov Behzod on 12/19/19.
//  Copyright © 2019 Homidov Behzod. All rights reserved.
//

import UIKit

class WordsLevelViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func Level1(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "WordsTableViewController") as! WordsTableViewController
        
        newVC.level = 1
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level2(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "WordsTableViewController") as! WordsTableViewController
        
        newVC.level = 2
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level3(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "WordsTableViewController") as! WordsTableViewController
        
        newVC.level = 3
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level4(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "WordsTableViewController") as! WordsTableViewController
        
        newVC.level = 4
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level5(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "WordsTableViewController") as! WordsTableViewController
        
        newVC.level = 5
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level6(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "WordsTableViewController") as! WordsTableViewController
        
        newVC.level = 6
        
        navigationController?.pushViewController( newVC, animated: true)
    }
}
