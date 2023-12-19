//
//  DishListViewController.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 19/12/23.
//

import UIKit

class DishListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dishes: [Dish] = [.init(id: "id1", title: "Grilled", image: UIImage(named: "barbeque")!, calories: 64.54, description: "Chicken Grilled kebabs barbeque Rosted Grills Delicious Food"),
         .init(id: "id2", title: "Sea Food", image: UIImage(named: "fishFry")!, calories: 55.42, description: "fish fries"),
         .init(id: "id3", title: "Cakes", image: UIImage(named: "cake")!, calories: 23.44, description: "cakes")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerCells()
    }
    
    private func registerCells(){
        tableView.register(UINib(nibName: "DishListTableViewCell", bundle: nil), forCellReuseIdentifier: "DishListTableViewCell")
    }
}

extension DishListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DishListTableViewCell") as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let controller = storyboard?.instantiateViewController(withIdentifier: "DishDetailViewController") as! DishDetailViewController
        
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
