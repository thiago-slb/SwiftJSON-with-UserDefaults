//
//  ViewController.swift
//  JsonAndStoreData
//
//  Created by Thiago Lovatine on 13/09/17.
//  Copyright © 2017 Thiago Lovatine. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
 
        //let users = String(describing: JSON([["name":"Thiago", "age": 25]]))
        
        //UserDefaults.standard.set(users, forKey: "user_list")
     
        var user_list : JSON  = JSON.parse(UserDefaults.standard.string(forKey: "user_list")!)
        
        let newUser : JSON = [["name" : "Thiago Lovatine"]]
        
        
        
        do {
            try user_list.merge(with:newUser)
            // use jsonData
        } catch {
            // report error
            print("Erro")
        }
        
        
        
        //print(user_list)
        //let json = JSON([["name":"Jack", "age": 25]])
        
        for (_,subJson):(String, JSON) in user_list {
            print(subJson["name"])
        }

        
        //print(JSON.parse(defaults.valueForKey("user_list") as! String))
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

