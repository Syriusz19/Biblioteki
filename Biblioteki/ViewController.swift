//
//  ViewController.swift
//  Biblioteki
//
//  Created by Eustachy on 18.11.2017.
//  Copyright © 2017 Eustachy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Downloader.download(collback: {person in
            print("ttygfty")
            print (person.mass)
            
        })
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

