//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Maksim Builov on 08/04/2023.
//

import UIKit

final class ResultViewController: UIViewController {
    // MARK: IBOutlets
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var descriptionResultLabel: UILabel!
    
    // MARK: Public properties
    var userAnswers: [Answer]!

    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        calculationResultQuiz()
    }

    // MARK: IB Actions
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    // MARK: Private Methods
    private func calculationResultQuiz() {
        var counterAnswers: [Temperament : Int] = [:]
        let answersType = userAnswers.map { $0.temperament }
        
        for type in answersType {
            counterAnswers[type] = (counterAnswers[type] ?? 0) + 1
        }
        
        let counterAnswersSorted = counterAnswers.sorted(by: { $0.value > $1.value } )
        let mostCommonAnswer = counterAnswersSorted.first?.key
        
        resultLabel.text = "Вы - \(mostCommonAnswer?.rawValue ?? "")"
        descriptionResultLabel.text = mostCommonAnswer?.definition
    }
}
