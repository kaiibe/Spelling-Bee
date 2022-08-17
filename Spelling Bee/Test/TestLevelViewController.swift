//
//  TestLevelViewController.swift
//  Spelling Bee
//
//  Created by Homidov Behzod on 12/22/19.
//  Copyright © 2019 Homidov Behzod. All rights reserved.
//

import UIKit

class TestLevelViewController: UIViewController {
  
    
    @IBAction func Level1(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        
        newVC.level = 1
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level2(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        
        newVC.level = 2
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level3(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        
        newVC.level = 3
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level4(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        
        newVC.level = 4
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level5(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        
        newVC.level = 5
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    @IBAction func Level6(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "TestViewController") as! TestViewController
        
        newVC.level = 6
        
        navigationController?.pushViewController( newVC, animated: true)
    }
    
}
