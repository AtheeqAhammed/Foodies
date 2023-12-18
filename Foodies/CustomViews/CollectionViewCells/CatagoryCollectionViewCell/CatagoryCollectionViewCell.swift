//
//  CatagoryCollectionViewCell.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 14/12/23.
//

import UIKit

class CatagoryCollectionViewCell: UICollectionViewCell {

    static let identifier = String(describing: CatagoryCollectionViewCell.self)
    
    @IBOutlet weak var catagoryImage: UIImageView!
    @IBOutlet weak var catagoryTitle: UILabel!
    
    
    func setup(_ catagory: DishCatagory) {
        catagoryTitle.text = catagory.title
        catagoryImage.image = catagory.image
    }
}
