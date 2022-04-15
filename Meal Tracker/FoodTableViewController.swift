//
//  FoodTableViewController.swift
//  Meal Tracker
//
//  Created by Latifah on 2022/4/15.
//

import UIKit

class FoodTableViewController: UITableViewController {

    var meals : [Meal]{
        [Meal(name: "breakfast", food: [Food(name: "蛋餅", description: "有澱粉"), Food(name: "漢堡", description: "有夾生菜"), Food(name: "中式套餐", description: "蘿蔔糕、豬排、豆漿")]),
         Meal(name: "lunch", food: [Food(name: "自助餐", description: "可以自己夾"), Food(name: "便當", description: "和公司管理部定"), Food(name: "肯德基", description: "和同事一起吃的邪惡食物")]),
         Meal(name: "dinner", food: [Food(name: "便當", description: "跟中午一起買"), Food(name: "飲料", description: "果汁最棒了"), Food(name: "湯", description: "喝湯是一定要的！")])]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let food = meals[indexPath.section].food[indexPath.row]
        cell.textLabel?.text = food.name
        cell.detailTextLabel?.text = food.description
        return cell
    }
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        meals[section].name
    }
}
