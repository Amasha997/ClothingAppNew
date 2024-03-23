//
//  NetworkManager.swift
//  ClothingAppNew
//
//  Created by NIBMPC04PC06 on 2024-03-23.
//

import UIKit

final class NetworkManager{
    
    static let shared = NetworkManager()
    private let cashe = NSCache<NSString, UIImage>()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/"
    
    private let productURL = baseURL + "appetizers"
    
    
    private init(){}
    
    func getProducts(completed: @escaping (Result<[Product], PError>) -> Void){
        guard let url = URL(string: productURL) else{
            completed(.failure(.invalidURL))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){data, response, error in
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse,  response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do{
                let decoder = JSONDecoder()
                let decodResponse =  try decoder.decode(ProductResponse.self, from: data)
                completed(.success(decodResponse.request))
            } catch{
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
    
    
    func downloadImage(fromURLString urlString: String, completed: @escaping (UIImage?) -> Void){
        let casheKey = NSString(string: urlString)
        
        if let image = cashe.object(forKey: casheKey){
            completed(image)
            return
        }
        
        guard let url = URL(string: urlString) else{
            completed(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)){data, response, error in
            guard let data = data, let image = UIImage(data: data) else{
                completed(nil)
                return
            }
            
            self.cashe.setObject(image, forKey: casheKey)
            completed(image)
        }
        
        task.resume()
        
    }
}