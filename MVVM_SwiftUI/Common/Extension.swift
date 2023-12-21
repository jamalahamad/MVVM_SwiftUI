//
//  Extension.swift
//  MVVM_SwiftUI
//
//  Created by Jamal Ahamad on 20/12/23.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case invalidRequest
    case badResponse
    case badStatus
    case failedToDecodeResponse
}

extension Double {
    func roundDouble() -> String {
            return String(format: "%.0f", self)
        }
}
