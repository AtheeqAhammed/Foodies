//
//  ListOrdersViewController.swift
//  Foodies
//
//  Created by Ateeq Ahmed on 19/12/23.
//

import UIKit

class ListOrdersViewController: UIViewController {
    
    var order: [Order] = [.init(id: "id1", name: "Laura", dish: .init(id: "id1", title: "Grilled", image: UIImage(named: "barbeque")!, calories: 64.54, description: "Chicken Grilled kebabs barbeque Rosted Grills Delicious Food")),
        .init(id: "id1", name: "Ali", dish: .init(id: "id2", title: "Sea Food", image: UIImage(named: "fishFry")!, calories: 55.42, description: "fish fries"))]
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerNibs()
    }

    private func registerNibs(){
        tableView.register(UINib(nibName: "DishListTableViewCell", bundle: nil), forCellReuseIdentifier: "DishListTableViewCell")
    }
}

extension ListOrdersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return order.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DishListTableViewCell") as! DishListTableViewCell
        
        cell.setup(order: order[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = storyboard?.instantiateViewController(identifier: "DishDetailViewController") as! DishDetailViewController
        
        controller.dish = order[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
