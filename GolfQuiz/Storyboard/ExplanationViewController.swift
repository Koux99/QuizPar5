//
//  ExplanationViewController.swift
//  GolfQuiz
//
//  Created by 宮崎晃輔 on 2021/09/19.
//

import UIKit

class ExplanationViewController: UIViewController {
    var quizArray: [String] = []
    
    @IBOutlet weak var quizTextView: UITextView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quizTextView.text = quizArray[0]
        answerLabel.text = "正解は\(quizArray[(Int(quizArray[1]) ?? 0) + 1])"
    }
}
