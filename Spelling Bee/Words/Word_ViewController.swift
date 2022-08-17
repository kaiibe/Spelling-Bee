//
//  Word_ViewController.swift
//  Spelling Bee
//
//  Created by Homidov Behzod on 12/20/19.
//  Copyright © 2019 Homidov Behzod. All rights reserved.
//

import UIKit
import AVKit

class Word_ViewController: UIViewController {
    
    var Word: String?
    var Definition: String?
    var Translation: String?
    var Sentence: String?
    
    let synthesizer = AVSpeechSynthesizer()
    
    @IBOutlet var WordLabel: UILabel!
    @IBOutlet var Info: UIView!
    @IBOutlet var InfoLabel: UILabel!
    @IBOutlet var InfoButton: UIButton!
    @IBOutlet var InfoView: UIView!
    
    @IBAction func SayWord(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
        let utterance = AVSpeechUtterance(string: Word!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
        synthesizer.speak(utterance)  
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
        
        InfoLabel.layoutIfNeeded()
        WordLabel.text = Word!
    }
    
    
    @IBAction func DefinitionButton(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
        
        Info.isHidden = false
        InfoLabel.isHidden = false
        InfoButton.isHidden = false
        InfoView.isHidden = false
        InfoLabel.text = Definition
        
        let utterance = AVSpeechUtterance(string: Definition!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
        synthesizer.speak(utterance)
    }
    
    
    @IBAction func SentenceButton(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
        
        Info.isHidden = false
        InfoLabel.isHidden = false
        InfoButton.isHidden = false
        InfoView.isHidden = false
        InfoLabel.text = Sentence
        
        let utterance = AVSpeechUtterance(string: Sentence!)
        utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
        synthesizer.speak(utterance)
    }
    
    
    @IBAction func TranslationButton(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
        
        Info.isHidden = false
        InfoLabel.isHidden = false
        InfoButton.isHidden = false
        InfoView.isHidden = false
        InfoLabel.text = Translation
        
        let utterance = AVSpeechUtterance(string: Translation!)
        utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
        synthesizer.speak(utterance)
    }
    
    
    @IBAction func TabRecognizer(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)
        Info.isHidden = true
        InfoLabel.isHidden = true
        InfoButton.isHidden = true
        InfoView.isHidden = true
    }
}
