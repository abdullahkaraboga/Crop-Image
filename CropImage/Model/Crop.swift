//
//  Crop.swift
//  CropImage
//
//  Created by Abdullah Karaboğa on 1.01.2023.
//

import SwiftUI

enum Crop : Equatable{
    case circle
    case rectangle
    case square
    case custom(CGSize)
    
    func name() -> String{
        switch self {
        case .circle:
            return "Circle Crop"
        case .rectangle:
            return "Rectangle Crop"
        case .square:
            return "Square Crop"
        case let .custom(cGSize):
            return "Custom Crop \(Int(cGSize.width))X\(Int(cGSize.height))"
        }
    }
    
    func size() -> CGSize{
        switch self {
        case .circle:
            return .init(width: 300, height: 300)
        case .rectangle:
            return .init(width: 300, height: 300)
        case .square:
            return .init(width: 300, height: 300)
        case .custom(let cGSize):
            return cGSize
        }
    }
}
 
