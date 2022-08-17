//
//  WordsTableViewController.swift
//  Spelling Bee
//
//  Created by Homidov Behzod on 12/20/19.
//  Copyright © 2019 Homidov Behzod. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

    var WordsArray: [String] = []
    var level: Int!

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
    
    var Level3Words = [ "Example3": ["Example Definition", "Перевод", "Example in Sentence"] ]
    
    var Level4Words = [ "Example4": ["Example Definition", "Перевод", "Example in Sentence"] ]
    
    var Level5Words = [ "Example5": ["Example Definition", "Перевод", "Example in Sentence"] ]
    
    var Level6Words = [ "Example6": ["Example Definition", "Перевод", "Example in Sentence"] ]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        if level == 1{
            
            for i in Level1Words.keys{
                WordsArray.append(i)
            }
            
        }else if level == 2{
            
            for i in Level2Words.keys{
                WordsArray.append(i)
            }
            
        }else if level == 3{
            
            for i in Level3Words.keys{
                WordsArray.append(i)
            }
            
        }else if level == 4{
            
            for i in Level4Words.keys{
                WordsArray.append(i)
            }
            
        }else if level == 5{
            
            for i in Level5Words.keys{
                WordsArray.append(i)
            }
            
        }else if level == 6{
            
            for i in Level6Words.keys{
                WordsArray.append(i)
            }
            
        }
        
        
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return WordsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let currentTextInCell = WordsArray[indexPath.row]
        
        cell.textLabel?.text = currentTextInCell

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let selectedWord = WordsArray[(tableView.indexPathForSelectedRow?.row)!]
        
        if level == 1{
            (segue.destination as! Word_ViewController).Word = selectedWord
            (segue.destination as! Word_ViewController).Definition = Level1Words[selectedWord]![0]
            (segue.destination as! Word_ViewController).Translation = Level1Words[selectedWord]![1]
            (segue.destination as! Word_ViewController).Sentence = Level1Words[selectedWord]![2]
        }else if level == 2{
            (segue.destination as! Word_ViewController).Word = selectedWord
            (segue.destination as! Word_ViewController).Definition = Level2Words[selectedWord]![0]
            (segue.destination as! Word_ViewController).Translation = Level2Words[selectedWord]![1]
            (segue.destination as! Word_ViewController).Sentence = Level2Words[selectedWord]![2]
        }else if level == 3{
            (segue.destination as! Word_ViewController).Word = selectedWord
            (segue.destination as! Word_ViewController).Definition = Level3Words[selectedWord]![0]
            (segue.destination as! Word_ViewController).Translation = Level3Words[selectedWord]![1]
            (segue.destination as! Word_ViewController).Sentence = Level3Words[selectedWord]![2]
        }else if level == 4{
            (segue.destination as! Word_ViewController).Word = selectedWord
            (segue.destination as! Word_ViewController).Definition = Level4Words[selectedWord]![0]
            (segue.destination as! Word_ViewController).Translation = Level4Words[selectedWord]![1]
            (segue.destination as! Word_ViewController).Sentence = Level4Words[selectedWord]![2]
        }else if level == 5{
            (segue.destination as! Word_ViewController).Word = selectedWord
            (segue.destination as! Word_ViewController).Definition = Level5Words[selectedWord]![0]
            (segue.destination as! Word_ViewController).Translation = Level5Words[selectedWord]![1]
            (segue.destination as! Word_ViewController).Sentence = Level5Words[selectedWord]![2]
        }else if level == 6{
            (segue.destination as! Word_ViewController).Word = selectedWord
            (segue.destination as! Word_ViewController).Definition = Level6Words[selectedWord]![0]
            (segue.destination as! Word_ViewController).Translation = Level6Words[selectedWord]![1]
            (segue.destination as! Word_ViewController).Sentence = Level6Words[selectedWord]![2]
        }
        
        
        
        
    }
    

}
