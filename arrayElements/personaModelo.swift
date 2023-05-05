//
//  personaModelo.swift
//  arrayElements
//
//  Created by ISSC_411_2022 on 27/04/22.
//

import Foundation

class personaOBJ: NSObject{
    @objc dynamic var id: Int
    @objc dynamic var name: String
    @objc dynamic var age: Int
    
    init(_ id:Int, _ name:String, _ age:Int) {
        self.id = id
        self.name = name
        self.age = age
    }
}
