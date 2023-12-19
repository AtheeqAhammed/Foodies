//
//  DishPotraitCollectionViewCell.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 18/12/23.
//

import UIKit

class DishPotraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DishPotraitCollectionViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    func setup(dish: Dish) {
        titleLabel.text = dish.title
        dishImage.image = dish.image
        caloriesLabel.text = dish.formattedCalories
        descriptionLabel.text = dish.description
    }
}
