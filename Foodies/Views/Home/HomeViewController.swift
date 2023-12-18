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
    
    var catagories: [DishCatagory] = [
        .init(id: "id1", title: "Veg Meals", image: UIImage(named: "lowcarbMeals")!),
        .init(id: "id2", title: "Starter", image: UIImage(named: "burger")!),
        .init(id: "id3", title: "Barbeque", image: UIImage(named: "barbeque")!),
        .init(id: "id4", title: "Sea Food", image: UIImage(named: "fishFry")!),
        .init(id: "id5", title: "Dessert's", image: UIImage(named: "cake")!),
        .init(id: "id6", title: "Pizza's", image: UIImage(named: "pizza")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerNibCells()
    }
    
    private func registerNibCells(){
        catagoryCollectionView.register(UINib(nibName: CatagoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CatagoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: CatagoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CatagoryCollectionViewCell.identifier)
    }

}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return catagories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatagoryCollectionViewCell", for: indexPath) as! CatagoryCollectionViewCell
        
        cell.setup(catagories[indexPath.row])
        return cell
    }
    
    
}
