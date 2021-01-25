//
//  API.swift
//  MovieList
//
//  Created by Abdülbaki Kaplan on 23.01.2021.
//

import Foundation
import Alamofire

class API {
    static let shared = API()

    func getMovie(completionHandler: @escaping(_ movie: Movie?, _ error: Error?) -> Void) {
        let url = Constants.shared.baseURL
        let parameters: Parameters = [
            "api_key": Constants.shared.apiKey
        ]
        AF.request(url, method: .get,
                   parameters: parameters,
                   encoding: URLEncoding(destination: .queryString)).response { (response) in
            if let data = response.data {
                do {
                    let movie = try JSONDecoder.init().decode(Movie.self, from: data)
                    completionHandler(movie, nil)
                } catch {
                    completionHandler(nil, error)
                }
            }
        }
    }
}
