//
//  Downloader.swift
//  Biblioteki
//
//  Created by Eustachy on 18.11.2017.
//  Copyright © 2017 Eustachy. All rights reserved.
//

import Foundation
import Alamofire

class Downloader{
    
    static func download (collback:@escaping (Person)->Void){
        print ("a")
        Alamofire.request("https://swapi.co/api/people/1/").responseJSON { response in
            
            if let json = response.result.value as? [String:Any]  {
//                print("JSON: \(json)") // serialized json response
                if let name = json["name"] as? String{
//                print (name)
                    print("b")
                    if let gender = json["gender"] as? String{
//                        print (gender)
                        
                        if let mass = json["mass"] as? String{
//                            print (mass)
                            
                            var person1: Person = Person(name: name, gender: gender, mass: mass)
                            collback(person1)
                            print(person1.name)
                        }

                    }

                }
                
            }
            
        }
        
        print("c")
    }
    
    func test1(callback: (Int) -> Void) {
        callback(9)
    }
    
    func test() {
        self.test1 { (number) in
            print("returned number = \(number)")
        }
    }
    
}
