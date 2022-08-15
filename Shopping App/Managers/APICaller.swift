//
//  APICaller.swift
//  Shopping App
//
//  Created by Kristoffer Baumgarten on 01/08/2022.
//
import Foundation

class APICaller{
    static let shared = APICaller()
    
        
    func getCategory(completion: @escaping (String) -> Void){
        // URL
        let url = URL(string: "https://asos2.p.rapidapi.com/categories/list?lang=en-US&country=US")
        
        guard url != nil else {
             return print("Error creating url object")
        }
        
        // URL Request
        
        var request = URLRequest(url: url!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
        
        // Specify the header
        let headers = [
            "X-RapidAPI-Key": "b951ee532cmsh9150654e1ff0d5fp1e9a6bjsn6049507649b9",
            "X-RapidAPI-Host": "asos2.p.rapidapi.com"
        ]
        
       
        // Set the request type
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        
        // Get the URLSession
        let session = URLSession.shared
        
        // Create the data task
        let dataTask = session.dataTask(with: request) { (data, respons, error)
            in
            if error == nil && data != nil {
                do {
                    
                   // let result = try JSONDecoder().decode(productList.self, from:  data!) as? [String:Any]
                   // print(result)
                    let dictionary =  try JSONSerialization.jsonObject(with:  data! , options: .mutableContainers) as? [String:Any]
                    print(dictionary)
                    
                    
                } catch {
                     print("Error parsing respone data")
                }
            }
        }
        
        // Fire off the data task
        dataTask.resume()
    }
}

