//
//  ResultsViewController.swift
//  Spelling Bee
//
//  Created by Homidov Behzod on 12/22/19.
//  Copyright © 2019 Homidov Behzod. All rights reserved.
//

import UIKit
import AVKit

class ResultsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var cnt = 0;

    @IBOutlet var Label: UILabel!
    @IBOutlet var PerLabel: UILabel!
    @IBOutlet var NoNLabel: UILabel!
    
    var result:Int?
    var seeResults:Int?
    var wordsAmount:Int?
    var per = "";
    var congrate = ""
        
    var state: [String: String] = [:]
    var ColorState: [String: UIColor] = [:]

    var WordsState: [String] = []
    var AnswerState: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in state.keys{
            WordsState.append(i)
        }
        for i in state.values{
            AnswerState.append(i)
        }
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        if wordsAmount != 0{
            per = String(( result! * 100 ) / wordsAmount!) + "%";
            
            if ( result! * 100 ) / wordsAmount! == 100{
                Label.text = "Awesome!!!"
                congrate = "Awesome!!!"
            }else if ( result! * 100 ) / wordsAmount! >= 75{
                Label.text = "Great!"
                congrate = "Great!"
            }else if ( result! * 100 ) / wordsAmount! >= 50{
                Label.text = "Nice!"
                congrate = "Nice!"
            }else if ( result! * 100 ) / wordsAmount! >= 25{
                Label.text = "Not bad!"
                congrate = "Not bad!"
            }else{
                Label.text = "Don't give up!"
                congrate = "Don't give up!"
            }
        }else{
            per = "0%"
            Label.text = "Don't give up!"
            congrate = "Don't give up!"
        }
 
        let synthesizer = AVSpeechSynthesizer()
        let utterance = AVSpeechUtterance(string: congrate)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
        synthesizer.speak(utterance)
        
        PerLabel.text = per
     
        NoNLabel.text = String(result! ) + "/" + String(wordsAmount!)
    }
    
    
    
    @IBAction func SaveRes(_ sender: Any) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    
        navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return state.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
           
        
        cell.textLabel?.text = WordsState[indexPath.row]
        cell.detailTextLabel?.text = AnswerState[indexPath.row]
        
        cell.textLabel?.textColor = .black
        cell.detailTextLabel?.textColor = ColorState[WordsState[indexPath.row]]
        
        return cell
    }
    
}
