//
//  FirstViewController.swift
//  Happy Thoughts
//
//  Created by Cora Hays-Magan on 8/11/16.
//  Copyright © 2016 c.haysmagan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //UITable View Data Source
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return thoughtMgr.thoughts.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        
        let cell: UITableViewCell = UITableViewCell()
        cell.detailTextLabel?.text = thoughtMgr.thoughts[indexPath.row].name
        return cell
        
    }


}

