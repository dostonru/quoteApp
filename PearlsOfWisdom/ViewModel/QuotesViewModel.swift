// QuotesViewModel.swift
// Bubbles , 
// Created by Doston Rustamov 05/03/23.
// Copyright 2023 Doston Rustamov . All rights reserved.

import Foundation
import RxSwift
import RxRelay

class QuotesViewModel {
    
    private let disposeBag = DisposeBag()
    private let quotes = BehaviorRelay<[Quote]>(value: [])
    
    private let quotesService: QuotesServiceProtocol
    
    init(quotesService: QuotesServiceProtocol) {
        self.quotesService = quotesService
        
        fetchQuotes()
    }
    
    private func fetchQuotes() {
        quotesService.fetchQuotes { (response: Result<[Quote], NetworkError>) in
            switch response {
            case .failure(let error):
                print(error)
            case .success(let quotes):
                self.quotes.accept(quotes)
            }
        }
    }

    func getRandomQuote() -> Quote {
        guard !quotes.value.isEmpty else {
            return Quote(text: "No Quotes for Now", author: "Developers")
        }
        
        let randomIndex = Int.random(in: 0..<quotes.value.count)
        let quote = quotes.value[randomIndex]
    
        return quote
    }

}
