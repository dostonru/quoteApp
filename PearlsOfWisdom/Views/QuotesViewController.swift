// ViewController.swift
// Bubbles , 
// Created by Doston Rustamov 05/03/23.
// Copyright 2023 Doston Rustamov . All rights reserved.

import UIKit
import RxSwift

class QuotesViewController: UIViewController, CAAnimationDelegate {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var generateButton: UIImageView!
    
    private let viewModel = QuotesViewModel(quotesService: QuotesService())
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    private func configureUI() {
        configureGenerateButton()
        confugureQuoteLabel()
        configureAuthorLabel()
    }
    
    
    private func configureGenerateButton() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(generateQuote))
        generateButton.isUserInteractionEnabled = true
        generateButton.addGestureRecognizer(tapGesture)
    }
    
    private func confugureQuoteLabel() {
        quoteLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func  configureAuthorLabel() {
        authorLabel.adjustsFontSizeToFitWidth = true
    }
    
    @objc func generateQuote() {
        let quote = viewModel.getRandomQuote()
        quoteLabel.text = quote.text
        authorLabel.text = quote.author
        
        quoteLabel.textColor = UIColor.randomColor()
    }
    
    
    
}
