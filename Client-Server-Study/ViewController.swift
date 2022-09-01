//
//  ViewController.swift
//  Client-Server-Study
//
//  Created by Victor Garitskyu on 01.09.2022.
//

import UIKit

class Session {
    
    static let instance = Session()
    
    private init(){}
    
    var fio = ""
    var money = 0
    var id = 0
}

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.instance
        session.fio = "Ivanov Ivan Ivan"
        session.id = 1
        session.money = 9999
        
        
    }


}

