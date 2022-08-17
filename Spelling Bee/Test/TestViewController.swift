//
//  TestViewController.swift
//  Spelling Bee
//
//  Created by Homidov Behzod on 12/22/19.
//  Copyright © 2019 Homidov Behzod. All rights reserved.
//

import UIKit
import AVKit

class TestViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet var AnswerLabel: UITextField!
    @IBOutlet var CheckButton: UIButton!
    @IBOutlet var SeeResultsOut: UIButton!
    
    let synthesizer = AVSpeechSynthesizer()
    
    var keyWord: String?
    var valueWord: String?
    var level:Int?
    var ans = 0;
    var cnt = 0;
    
    
    var wordsArray: [String] = [];
    var state: [String: String] = [:]
    var ColorState: [String: UIColor] = [:]
    
    var Level1Words = [
        "Account": [
            "A report or description of an event or experience.",
            "Cчет.",
            "Her bank account was rarely over two hundred."],
        
        "Air": [
            "the invisible gaseous substance surrounding the earth, a mixture mainly of oxygen and nitrogen.",
            "Воздух.",
            "I like to dine outdoors in the open air."],
        
        "Amount": [
            "A quantity of something, especially the total of a thing or things in number, size, value, or extent.",
            "Количество.",
            "sport gives an enormous amount of pleasure to many people."],
        
        "Animal": [
            "A living organism that feeds on organic matter, typically having specialized sense organs and nervous system and able to respond rapidly to stimuli.",
            "Животное.",
            "Wild animals adapt badly to a caged life."],
        
        "Answer": [
            "A thing that is said, written, or done as a reaction to a question, statement, or situation.",
            "Ответ.",
            "He knocked and entered without waiting for an answer."],
        
        "Approval": [
            "The action of approving something.",
            "Утверждение.",
            "The road schemes have been given approval."],
        
        "Art": [
            "The expression or application of human creative skill and imagination.",
            "Искусство.",
            "The art of the Renaissance."],
        
        "Attack": [
            "Take aggressive military action against with weapons or armed force.",
            "Атаковать.",
            "In February the Germans attacked Verdun."],
        
        "Attation": [
            "Notice taken of someone or something; the regarding of someone or something as interesting or important.",
            "Внимание.",
            "He drew attention to three spelling mistakes."],
        
        "Back": [
            "In the opposite direction from the one that one is facing or travelling towards.",
            "Назад",
            "He moved back a pace."],
        
        "Base": [
            "The lowest part or edge of something, especially the part on which it rests or is supported.",
            "База",
            "She sat down at the base of a tree."],
        
        "Behaviour": [
            "The way in which one acts or conducts oneself, especially towards others.",
            "Поведение",
            "He will vouch for her good behaviour."],
        
        "Belief": [
            "An acceptance that something exists or is true, especially one without proof.",
            "Вера.",
            "His belief in extraterrestrial life."],
        
        "Birth": [
            "The start of life as a physically separate being.",
            "Рождение.",
            "He was blind from birth."],
        
        "Blood": [
            "The red liquid that circulates in the arteries and veins of humans and other vertebrate animals.",
            "кровь.",
            "Drops of blood."],
        
        "Blow": [
            "A strong wind.",
            "Дуть.",
            "We are in for a bit of a blow."],
        
        "Body": [
            "The physical structure, including the bones, flesh, and organs, of a person or an animal.",
            "Тело.",
            "Tt is important to keep your body in good condition."],
        
        "Bread": [
            "Food made of flour, water, and yeast mixed together and baked.",
            "Хлеб.",
            "A loaf of bread."],
        
        "Breath": [
            "The air taken into or expelled from the lungs.",
            "Дыхание.",
            "I was gasping for breath."],
        
        "Brother": [
            "A man or boy in relation to other sons and daughters of his parents.",
            "Брат.",
            "He recognized her from her strong resemblance to her brother."],
        
        "Building": [
            "The action or trade of constructing something.",
            "Здание.",
            "The building of motorways."],
        
        "Burn": [
            "Flame or glow while consuming a material such as coal or wood.",
            "Ожог.",
            "A fire burned and crackled cheerfully in the grate."],
        
        "Business": [
            "A person's regular occupation, profession, or trade..",
            "Experts who typically conduct their business over the Internet.",
            "Бизнес."],
        
        "Butter": [
            "A pale yellow edible fatty substance made by churning cream and used as a spread or in cooking.",
            "Масло.",
            ""],
        
        "Care": [
            "Serious attention or consideration applied to doing something correctly or to avoid damage or risk.",
            "Ухаживать.",
            "He planned his departure with great care."],
        
        "Сause": [
            "A person or thing that gives rise to an action, phenomenon, or condition.",
            "Причина.",
            "The cause of the accident is not clear."],
        
        "Chance": [
            "The occurrence of events in the absence of any obvious intention or cause.",
            "Возможность.",
            "He met his brother by chance."],
        
        "Сhange": [
            "An act or process through which something becomes different.",
            "Изменять.",
            "The change from a nomadic to an agricultural society"],
        
        "Cloth": [
            "Woven or felted fabric made from wool, cotton, or a similar fibre.",
            "Ткань.",
            "A broad piece of pleated cloth."],
        
        "Color": [
            "Pigmentation of the skin, especially as an indication of someone's race.",
            "Цвет.",
            "Discrimination on the basis of color."],
        
    ]
    
    var Level2Words = [
        "Color": [
            "Pigmentation of the skin, especially as an indication of someone's race.",
            "Цвет.",
            "Discrimination on the basis of color."],
    ]
    
    var Level3Words = [ "Example3": ["Example Definition", "Перевод", "Example in Sentence"], "Example31": ["Example Definition", "Перевод", "Example in Sentence"] ]
    
    var Level4Words = [ "Example4": ["Example Definition", "Перевод", "Example in Sentence"], "Example41": ["Example Definition", "Перевод", "Example in Sentence"] ]
    
    var Level5Words = [ "Example5": ["Example Definition", "Перевод", "Example in Sentence"], "Example51": ["Example Definition", "Перевод", "Example in Sentence"] ]
    
    var Level6Words = [ "Example6": ["Example Definition", "Перевод", "Example in Sentence"], "Example61": ["Example Definition", "Перевод", "Example in Sentence"] ]
    

    var WordsOrder: [Int] = []
    
    
    override func viewDidLoad() {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)

        super.viewDidLoad()

        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        if level == 1{
            for i in 0 ... Level1Words.count-1{
                WordsOrder.append(i)
            }
            
            for i in Level1Words.keys{
                wordsArray.append(i)
            }
            
                    let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
            
        }else if level == 2{
            for i in 0 ... Level2Words.count-1{
                WordsOrder.append(i)
            }
            
            for i in Level2Words.keys{
                wordsArray.append(i)
            }
            
                    let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
            
        }else if level == 3{
            for i in 0 ... Level3Words.count-1{
                WordsOrder.append(i)
            }
            
            for i in Level3Words.keys{
                wordsArray.append(i)
            }
            
                    let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        }else if level == 4{
            for i in 0 ... Level4Words.count-1{
                WordsOrder.append(i)
            }
            
            for i in Level4Words.keys{
                wordsArray.append(i)
            }
            
                    let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        }else if level == 5{
            for i in 0 ... Level5Words.count-1{
                WordsOrder.append(i)
            }
            
            for i in Level5Words.keys{
                wordsArray.append(i)
            }
            
                    let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        }else if level == 6{
            for i in 0 ... Level6Words.count-1{
                WordsOrder.append(i)
            }
            
            for i in Level6Words.keys{
                wordsArray.append(i)
            }
            
                    let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        }
        
        self.AnswerLabel.delegate = self
        
    }
    
    
    @IBAction func Voice(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)

            let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
        utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
        synthesizer.speak(utterance)
    }
    
    
    @IBAction func DefenitionButton(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)

        if level == 1{

                    let utterance = AVSpeechUtterance(string: Level1Words[wordsArray[WordsOrder[cnt]]]![0])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        
        }else if level == 2{
             
                    let utterance = AVSpeechUtterance(string: Level2Words[wordsArray[WordsOrder[cnt]]]![0])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        
        }else if level == 3{
   
                    let utterance = AVSpeechUtterance(string: Level3Words[wordsArray[WordsOrder[cnt]]]![0])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
       
        }else if level == 4{
  
                    let utterance = AVSpeechUtterance(string: Level4Words[wordsArray[WordsOrder[cnt]]]![0])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        
        }else if level == 5{
       
                    let utterance = AVSpeechUtterance(string: Level5Words[wordsArray[WordsOrder[cnt]]]![0])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        
        }else if level == 6{

                    let utterance = AVSpeechUtterance(string: Level6Words[wordsArray[WordsOrder[cnt]]]![0])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        }
    }
    
    
    @IBAction func TranslationButton(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)

        if level == 1{
            
                    let utterance = AVSpeechUtterance(string: Level1Words[wordsArray[WordsOrder[cnt]]]![1])
            utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
            synthesizer.speak(utterance)
        
        }else if level == 2{
                    let utterance = AVSpeechUtterance(string: Level2Words[wordsArray[WordsOrder[cnt]]]![1])
            utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
            synthesizer.speak(utterance)
        }else if level == 3{
            
                    let utterance = AVSpeechUtterance(string: Level3Words[wordsArray[WordsOrder[cnt]]]![1])
            utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
            synthesizer.speak(utterance)
        
        }else if level == 4{
          
                    let utterance = AVSpeechUtterance(string: Level4Words[wordsArray[WordsOrder[cnt]]]![1])
            utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
            synthesizer.speak(utterance)
       
        }else if level == 5{
         
                    let utterance = AVSpeechUtterance(string: Level5Words[wordsArray[WordsOrder[cnt]]]![1])
            utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
            synthesizer.speak(utterance)
       
        }else if level == 6{
         
                    let utterance = AVSpeechUtterance(string: Level6Words[wordsArray[WordsOrder[cnt]]]![1])
            utterance.voice = AVSpeechSynthesisVoice(language: "ru-RU")
            synthesizer.speak(utterance)
        }
    }
    
    
    @IBAction func ISButton(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)

        if level == 1{
         
                    let utterance = AVSpeechUtterance(string: Level1Words[wordsArray[WordsOrder[cnt]]]![2])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
       
        }else if level == 2{
        
                    let utterance = AVSpeechUtterance(string: Level2Words[wordsArray[WordsOrder[cnt]]]![2])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        
        }else if level == 3{
         
                    let utterance = AVSpeechUtterance(string: Level3Words[wordsArray[WordsOrder[cnt]]]![2])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
       
        }else if level == 4{
          
                    let utterance = AVSpeechUtterance(string: Level4Words[wordsArray[WordsOrder[cnt]]]![2])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
     
        }else if level == 5{

                    let utterance = AVSpeechUtterance(string: Level5Words[wordsArray[WordsOrder[cnt]]]![2])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
    
        }else if level == 6{
           
                    let utterance = AVSpeechUtterance(string: Level6Words[wordsArray[WordsOrder[cnt]]]![2])
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
        }
    }
    
    
    @IBAction func CheckButton(_ sender: Any) {
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)

        if AnswerLabel.text != ""{
            
            let newVC = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
            keyWord = wordsArray[WordsOrder[cnt]].lowercased()
            valueWord = AnswerLabel.text?.lowercased()
            
            
            if AnswerLabel.text?.lowercased() == wordsArray[WordsOrder[cnt]].lowercased(){
                ans += 1
                ColorState[keyWord!] = UIColor.init(red: 0, green: 225, blue: 0, alpha: 1)
            }else{
                ColorState[keyWord!] = UIColor.red
            }
            
            
            state[keyWord!] = valueWord!
          
            cnt += 1
            
            if cnt <= wordsArray.count-1{
                            let utterance = AVSpeechUtterance(string: wordsArray[WordsOrder[cnt]])
                utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
                synthesizer.speak(utterance)
            }
            
            if cnt == wordsArray.count-1{
                CheckButton.setTitle("See Results", for: .normal)
                SeeResultsOut.isHidden = true
            }
    
            if cnt == wordsArray.count{
                
                newVC.result = ans
                newVC.wordsAmount = wordsArray.count
                newVC.state = state
                newVC.ColorState = ColorState
                
                navigationController?.pushViewController( newVC, animated: true)
                
            }
           
            AnswerLabel.placeholder = ""
            AnswerLabel.text = "";
        }else{
                    let utterance = AVSpeechUtterance(string: "Plese, type a word")
            utterance.voice = AVSpeechSynthesisVoice(language: "en-EN")
            synthesizer.speak(utterance)
            AnswerLabel.placeholder = "Plese, type a word"
        }
        
        
        self.view.endEditing(true)
    }
    
    
    
    @IBAction func ResultsButton(_ sender: Any) {
     
        synthesizer.stopSpeaking(at: AVSpeechBoundary.immediate)

        
        let newVC = storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        keyWord = wordsArray[WordsOrder[cnt]].lowercased()
        
        if AnswerLabel.text?.lowercased() != ""{
        
            if AnswerLabel.text?.lowercased() == wordsArray[WordsOrder[cnt]].lowercased(){
                ans += 1
                ColorState[keyWord!] = UIColor.init(red: 0, green: 225, blue: 0, alpha: 1)
            }else{
                ColorState[keyWord!] = UIColor.red
            }
            
            keyWord = wordsArray[WordsOrder[cnt]].lowercased()
            valueWord = AnswerLabel.text?.lowercased()
            
            state[keyWord!] = valueWord!
            
        }
        
        newVC.result = ans;
        newVC.state = state
        newVC.ColorState = ColorState
        
        if AnswerLabel.text == ""{
            newVC.wordsAmount = cnt
        }else{
            newVC.wordsAmount = cnt+1
        }
   
        navigationController?.pushViewController( newVC, animated: true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
}
