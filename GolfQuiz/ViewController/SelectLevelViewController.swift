//
//  SelectLevelViewController.swift
//  GolfQuiz
//
//  Created by 宮崎晃輔 on 2021/09/18.
//

import UIKit

class SelectLevelViewController: UIViewController {
    @IBOutlet weak var level1Button: UIButton!
    @IBOutlet weak var level2Button: UIButton!
    @IBOutlet weak var level3Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        level1Button.layer.borderWidth = 2
        level1Button.layer.borderColor = UIColor.black.cgColor
        level2Button.layer.borderWidth = 2
        level2Button.layer.borderColor = UIColor.black.cgColor
        level3Button.layer.borderWidth = 2
        level3Button.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func levelButtonAction(sender: UIButton) {
        let storyboard = UIStoryboard(name: "Quiz", bundle: nil)
        let quizVC = storyboard.instantiateViewController(withIdentifier: "Quiz") as! QuizViewController
        quizVC.selectLevel = sender.tag
        self.present(quizVC, animated: true)
    }
}
