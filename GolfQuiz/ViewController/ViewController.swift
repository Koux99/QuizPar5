//
//  ViewController.swift
//  GolfQuiz
//
//  Created by 宮崎晃輔 on 2021/09/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
    }
    
    @IBAction func teeOffButtonAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SelectLevel", bundle: nil)
        let selectLevelVC = storyboard.instantiateViewController(withIdentifier: "SelectLevel") as! SelectLevelViewController
        self.present(selectLevelVC, animated: true)
    }
    
}
