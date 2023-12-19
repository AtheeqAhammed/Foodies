//
//  ChefSpecialCollectionViewCell.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 19/12/23.
//

import UIKit

class ChefSpecialCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: ChefSpecialCollectionViewCell.self)

    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var dishDescription: UILabel!
    @IBOutlet weak var calories: UILabel!
    
    
    func setup(dish: Dish){
        dishImage.image = dish.image
        title.text = dish.title
        dishDescription.text = dish.description
        calories.text = dish.formattedCalories
    }
}

