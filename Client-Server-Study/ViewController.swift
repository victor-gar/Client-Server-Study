//
//  ViewController.swift
//  Client-Server-Study
//
//  Created by Victor Garitskyu on 01.09.2022.
//

import UIKit



class ViewController: UIViewController {
   
    @IBOutlet weak var labelView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    func fruictDidSelect(_ fruit: String) {
        labelView.text = fruit
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFruit" {
            let ctrl = segue.destination as! ApplyViewController
            ctrl.delegate = self
        }
            
    }
}

