// NetworkManager.swift
// Bubbles , 
// Created by Doston Rustamov 05/03/23.
// Copyright 2023 Doston Rustamov . All rights reserved.

import Foundation

enum NetworkError: Error {
    case urlError
    case fetchError
    case decodingError
    case emptyData
}

protocol QuotesServiceProtocol: AnyObject {
    func fetchQuotes<T: Decodable>(completion: @escaping ((Result<[T], NetworkError>) -> Void))
}

class QuotesService: QuotesServiceProtocol {
    
    func fetchQuotes<T>(completion: @escaping (Result<[T], NetworkError>) -> Void) where T: Decodable {
        
        guard let url = URL(string: "https://type.fit/api/quotes") else {
            completion(.failure(.urlError))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(.fetchError))
                print("Error fetching quotes: \(error)")
                return
            }
            
            guard let data = data else {
                completion(.failure(.emptyData))
                print("No data returned from API")
                return
            }
            
            do {
                let quotes = try JSONDecoder().decode([T].self, from: data)
                completion(.success(quotes))
            } catch {
                completion(.failure(.decodingError))
                print("Error decoding quotes: \(error)")
            }
        }.resume()
    }
}
