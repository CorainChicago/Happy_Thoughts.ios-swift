//
//  ThoughtManager.swift
//  Happy Thoughts
//
//  Created by Cora Hays-Magan on 8/11/16.
//  Copyright © 2016 c.haysmagan. All rights reserved.
//

import UIKit

//This is a global variable
var thoughtMgr: ThoughtManager = ThoughtManager()

// basic structure of thought object
struct thought{
    var name = "Un-named"
    var description = "Un-described"
}

class ThoughtManager: NSObject {
    
    var thoughts = thought[]()
    
    func addThought(name: String, description: String){
        thoughts.append(thought(name: name, description: description))
    }

}
