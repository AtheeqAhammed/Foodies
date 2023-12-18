//
//  OnboardingCollectionViewCell.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 14/12/23.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var onboardingImage: UIImageView!
    @IBOutlet weak var onboardingTitle: UILabel!
    @IBOutlet weak var onboardDescription: UILabel!
    
    func setup(_ slide: OnboardingSlide){
        self.onboardingTitle.text = slide.title
        self.onboardDescription.text = slide.description
        self.onboardingImage.image = slide.image
    }
}
