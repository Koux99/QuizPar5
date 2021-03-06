//
//  QuizViewController.swift
//  GolfQuiz
//
//  Created by 宮崎晃輔 on 2021/09/18.
//

import UIKit

class QuizViewController: UIViewController {
    @IBOutlet weak var quizNumberLabel: UILabel!
    @IBOutlet weak var quizTextView: UITextView!
    @IBOutlet weak var answerButton1: UIButton!
    @IBOutlet weak var answerButton2: UIButton!
    @IBOutlet weak var answerButton3: UIButton!
    @IBOutlet weak var answerButton4: UIButton!
    @IBOutlet weak var judgeImageView: UIImageView!
    
    private var csvArray: [String] = []
    private var quizArray: [String] = []
    private var quizCount = 0
    private var correctCount = 0
    var selectLevel = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        csvArray = loadCSV(fileName: "quiz\(selectLevel)")
        csvArray.shuffle()
        
        quizArray = csvArray[quizCount].components(separatedBy: ",")
        
        quizNumberLabel.text = "第\(quizCount + 1)問"
        quizTextView.text = quizArray[0]
        answerButton1.setTitle(quizArray[2], for: .normal)
        answerButton2.setTitle(quizArray[3], for: .normal)
        answerButton3.setTitle(quizArray[4], for: .normal)
        answerButton4.setTitle(quizArray[5], for: .normal)
        
        answerButton1.layer.borderWidth = 2
        answerButton1.layer.borderColor = UIColor.black.cgColor
        answerButton2.layer.borderWidth = 2
        answerButton2.layer.borderColor = UIColor.black.cgColor
        answerButton3.layer.borderWidth = 2
        answerButton3.layer.borderColor = UIColor.black.cgColor
        answerButton4.layer.borderWidth = 2
        answerButton4.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func btnAction(sender: UIButton) {
        if sender.tag == Int(quizArray[1]) {
            correctCount += 1
            judgeImageView.image = UIImage(named: "correct")
        } else {
            judgeImageView.image = UIImage(named: "incorrect")
        }
        judgeImageView.isHidden = false
        answerButton1.isEnabled = false
        answerButton2.isEnabled = false
        answerButton3.isEnabled = false
        answerButton4.isEnabled = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {

            let storyboard = UIStoryboard(name: "Explanation", bundle: nil)
            let explanationVC = storyboard.instantiateViewController(withIdentifier: "Explanation") as! ExplanationViewController
            explanationVC.presentationController?.delegate = self
            explanationVC.quizArray = self.quizArray
            self.present(explanationVC, animated: true)
        }
    }
    
    func nextQuiz() {
        quizCount += 1
        if quizCount < csvArray.count {
            quizArray = csvArray[quizCount].components(separatedBy: ",")
            quizNumberLabel.text = "第\(quizCount + 1)問"
            quizTextView.text = quizArray[0]
            answerButton1.setTitle(quizArray[2], for: .normal)
            answerButton2.setTitle(quizArray[3], for: .normal)
            answerButton3.setTitle(quizArray[4], for: .normal)
            answerButton4.setTitle(quizArray[5], for: .normal)
        } else {
            let storyboard = UIStoryboard(name: "Score", bundle: nil)
            let scoreVC = storyboard.instantiateViewController(withIdentifier: "Score") as! ScoreViewController
            scoreVC.correct = correctCount
            self.present(scoreVC, animated: true)
        }
    }
    
    func loadCSV(fileName: String) -> [String] {
        let csvBundle = Bundle.main.path(forResource: fileName, ofType: "csv")!
        do {
            let csvData = try String(contentsOfFile: csvBundle, encoding: .utf8)
            let lineChange = csvData.replacingOccurrences(of: "\r", with: "\n")
            csvArray = lineChange.components(separatedBy: "\n")
            csvArray.removeLast()
        } catch {
            print("エラー")
        }
        return csvArray
    }
}

extension QuizViewController: UIAdaptivePresentationControllerDelegate {
    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        self.judgeImageView.isHidden = true
        self.answerButton1.isEnabled = true
        self.answerButton2.isEnabled = true
        self.answerButton3.isEnabled = true
        self.answerButton4.isEnabled = true
        self.nextQuiz()
    }
}
