//
//  ViewController.swift
//  The One Percent - Swift
//
//  Created by Jian Yao Ang on 10/29/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = searchBillionaire(name: "Mark Cuban")
        println("\(name.0) \(name.1)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    func searchBillionaire (#name: String) -> (Bool, String) {
        
        let names = ["Bill Gates", "Warren Buffet", "Mark Cuban",]
        
        var found = (false, "\(name) is not found")
        
        for billionaire in names
        {
            if billionaire == name
            {
                found = (true, "\(name) is a billionaire ")
                println("\(found)")
            }
        }
        return found
    }
}

