//
//  DishListTableViewCell.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 19/12/23.
//

import UIKit

class DishListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var dishTitle: UILabel!
    @IBOutlet weak var dishDescription: UILabel!
    
    func setup(dish: Dish){
        dishImage.image = dish.image
        dishTitle.text = dish.title
        dishDescription.text = dish.description
    }
    
    func setup(order: Order){
        dishImage.image = order.dish?.image
        dishTitle.text = order.name
        dishDescription.text = order.dish?.title
    }
}
