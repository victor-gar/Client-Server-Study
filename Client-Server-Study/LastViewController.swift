//
//  LastViewController.swift
//  Client-Server-Study
//
//  Created by Victor Garitskyu on 01.09.2022.
//

import UIKit

class LastViewController: UIViewController {

    @IBOutlet weak var moneyView: UILabel!
    @IBOutlet weak var nameView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let session = Session.instance
        nameView.text = session.fio
        moneyView.text = String(describing: session.money)
    }
    
   

  
}
