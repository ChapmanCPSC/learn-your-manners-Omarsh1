//
//  Manners.swift
//  MannersApplication
//
//  Created by Omar Sherief on 4/18/16.
//  Copyright © 2016 Project(X). All rights reserved.
//

import UIKit
class Manner{
    var name : String?
    var didLearn : Bool?
    var mannerImageNamed : String?
    var mannerDescription : String?
    
    init (_ name : String, _ didLearn : Bool, _ mannerImageNamed : String, _ mannerDescription:String){
        self.name = name
        self.didLearn = didLearn
        self.mannerImageNamed = mannerImageNamed
        self.mannerDescription = mannerDescription
    }
    
    
}
