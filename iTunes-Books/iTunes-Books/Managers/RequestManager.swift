//
//  RequestManager.swift
//  iTunes-Books
//
//  Created by Serhat Küçük on 1.09.2021.
//

import Foundation
import Alamofire

class RequestManager: NSObject {
    static let shared = RequestManager()
    
    func createURL(with endpoint: String) -> String {
        return Constants.shared.baseURL + endpoint
    }
    
    func getMovieDetail (with request: String) {
        AF.request(createURL(with: "&i=\(request)"), method: .get, parameters: nil, encoding: JSONEncoding.default).responseJSON { response in
            switch (response.result) {

                case .success( _):

                do {
//                        let currencies = try JSONDecoder().decode(Response.self, from: response.data!)
//                    self.parseJSON(response.data!)
                    print(response)

                } /*catch let error as NSError {
                    print("Failed to load: \(error.localizedDescription)")
                }*/

                 case .failure(let error):
                    print("Request error: \(error.localizedDescription)")
             }
        }
    }
    
    
    
    
    
 
    
    
}

extension RequestManager {
    
}
