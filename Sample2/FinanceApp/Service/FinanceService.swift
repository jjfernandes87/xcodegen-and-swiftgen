//
//  FinanceService.swift
//  FinanceApp
//
//  Created by Lucas Eduardo Schlogl on 08/02/22.
//

import Foundation
import Alamofire

protocol FinanceServiceProtocol {
    func load<T: Decodable>(endpoint: FinanceEndpoint, completion: @escaping (Result<T, Error>) -> Void)
    func cancel()
}

final class FinanceService: FinanceServiceProtocol {
    
    /// Sesstion manager for timeout controll
    static var alamofireManager: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 20
        configuration.timeoutIntervalForResource = 20
        return Alamofire.Session(configuration: configuration)
    }()
    
    private func makeURL(endpoint: String) -> URL? {
        let urlString = "https://raw.githubusercontent.com/devpass-tech/challenge-viper-finance/main/api/\(endpoint).json"
        return URL(string: urlString)
    }

    func load<T: Decodable>(endpoint: FinanceEndpoint, completion: @escaping (Result<T, Error>) -> Void) {
        guard let url = makeURL(endpoint: endpoint.rawValue) else {
            DispatchQueue.main.async {
                completion(.failure(FinanceServiceError.invalidURL))
            }
            return
        }
        
        FinanceService.alamofireManager.request(URLRequest(url: url))
            .validate(statusCode: 200..<300)
            .responseData { (response) in
                switch response.result {
                case let .success(data):
                    guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
                        DispatchQueue.main.async {
                            completion(.failure(FinanceServiceError.decode))
                        }
                        return
                    }
                    completion(.success(decodedData))
                case .failure: completion(.failure(FinanceServiceError.invalidData))
                }
        }
    }

    func cancel() {
        FinanceService.alamofireManager.cancelAllRequests()
    }
	
}
