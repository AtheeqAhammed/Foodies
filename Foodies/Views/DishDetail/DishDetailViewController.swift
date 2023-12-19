//
//  DishDetailViewController.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 19/12/23.
//

import UIKit

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var dishTitle: UILabel!
    @IBOutlet weak var dishCalories: UILabel!
    @IBOutlet weak var dishDescription: UILabel!
    @IBOutlet weak var nameTxt: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        populateView()
    }
    
    private func populateView(){
        dishImage.image = dish.image
        dishTitle.text = dish.title
        dishDescription.text = dish.description
        dishCalories.text = dish.formattedCalories
    }

    @IBAction func placeOrderTapped(_ sender: UIButton) {
    }
}
