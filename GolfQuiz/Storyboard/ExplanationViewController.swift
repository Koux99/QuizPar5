//
//  ExplanationViewController.swift
//  GolfQuiz
//
//  Created by 宮崎晃輔 on 2021/09/19.
//

import UIKit

class ExplanationViewController: UIViewController {
    @IBOutlet weak var quizTextView: UITextView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var explanationTextView: UITextView!
    
    var quizArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quizTextView.text = quizArray[0]
        answerLabel.text = "正解は\(quizArray[(Int(quizArray[1]) ?? 0) + 1])"
        explanationTextView.text = quizArray.count == 7 ? quizArray[6] : ""
    }
    
    @IBAction func closeButtonAction(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension ExplanationViewController {
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
        super.dismiss(animated: flag, completion: completion)
        guard let presentationController = presentationController else {
            return
        }
        presentationController.delegate?.presentationControllerDidDismiss?(presentationController)
    }
}
