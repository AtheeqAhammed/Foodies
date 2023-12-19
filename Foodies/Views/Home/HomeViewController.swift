//
//  HomeViewController.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 14/12/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var catagoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    var catagories: [DishCatagory] = [
        .init(id: "id1", title: "Veg Meals", image: UIImage(named: "lowcarbMeals")!),
        .init(id: "id2", title: "Starter", image: UIImage(named: "burger")!),
        .init(id: "id3", title: "Barbeque", image: UIImage(named: "barbeque")!),
        .init(id: "id4", title: "Sea Food", image: UIImage(named: "fishFry")!),
        .init(id: "id5", title: "Dessert's", image: UIImage(named: "cake")!),
        .init(id: "id6", title: "Pizza's", image: UIImage(named: "pizza")!)]
    
    var populars: [Dish] = [.init(id: "id1", title: "Grilled", image: UIImage(named: "barbeque")!, calories: 64.54, description: "Chicken Grilled kebabs barbeque Rosted Grills Delicious Food"),
        .init(id: "id2", title: "Sea Food", image: UIImage(named: "fishFry")!, calories: 55.42, description: "fish fries"),
        .init(id: "id3", title: "Cakes", image: UIImage(named: "cake")!, calories: 23.44, description: "cakes")]
    
    var specials: [Dish] = [.init(id: "id1", title: "Cake", image: UIImage(named: "cake")!, calories: 24, description: "Pink Cake"),
        .init(id: "id2", title: "Burger", image: UIImage(named: "burger")!, calories: 38, description: "Burgers"),
        .init(id: "id3", title: "Grilled", image: UIImage(named: "barbeque")!, calories: 124, description: "Grilled Chicken")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerNibCells()
    }
    
    private func registerNibCells(){
        catagoryCollectionView.register(UINib(nibName: CatagoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CatagoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPotraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPotraitCollectionViewCell.identifier)
        specialCollectionView.register(UINib(nibName: ChefSpecialCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: ChefSpecialCollectionViewCell.identifier)
    }

}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case catagoryCollectionView:
            return catagories.count
            
        case popularCollectionView:
            return populars.count
            
        case specialCollectionView:
            return specials.count
            
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case catagoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatagoryCollectionViewCell", for: indexPath) as! CatagoryCollectionViewCell
            
            cell.setup(catagories[indexPath.row])
            return cell
            
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DishPotraitCollectionViewCell", for: indexPath) as! DishPotraitCollectionViewCell
            
            cell.setup(dish: populars[indexPath.row])
            return cell
            
        case specialCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChefSpecialCollectionViewCell", for: indexPath) as! ChefSpecialCollectionViewCell
            
            cell.setup(dish: specials[indexPath.row])
            return cell
            
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == catagoryCollectionView {
            let dishController = storyboard?.instantiateViewController(identifier: "DishListViewController") as! DishListViewController 
            
            navigationController?.pushViewController(dishController, animated: true)
        } else {
            let dishController = storyboard?.instantiateViewController(withIdentifier: "DishDetailViewController") as! DishDetailViewController
            
            dishController.dish = collectionView == popularCollectionView ? populars[indexPath.row] : specials[indexPath.row]
            
            navigationController?.pushViewController(dishController, animated: true)
        }
    }
    
}
