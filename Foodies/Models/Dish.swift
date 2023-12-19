//
//  Dish.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 18/12/23.
//

import Foundation
import UIKit

struct Dish {
    let id: String
    let title: String
    let image: UIImage
    let calories: Double?
    let description: String
    
    
    var formattedCalories: String {
        return String(format: "%.2f calories", calories ?? 0)
    }
}
