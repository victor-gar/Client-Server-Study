//
//  ApplyViewController.swift
//  Client-Server-Study
//
//  Created by Victor Garitskyu on 01.09.2022.
//

import UIKit

class ApplyViewController: UITableViewController {

    let apple = ["Яблоко", "Персик", "Киви"]
    
    weak var delegate:ViewController?
    weak var delegateTwo:TwoViewController?

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apple.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AppleCell", for: indexPath)
        cell.textLabel?.text = apple[indexPath.row]
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let fruit = apple[indexPath.row]
        delegate?.fruictDidSelect(fruit)
        dismiss(animated: true,completion: nil)
        
        let fruits = apple[indexPath.row]
        delegateTwo?.fruictDidSelect(fruits)
        dismiss(animated: true,completion: nil)
        
        
    }
}
