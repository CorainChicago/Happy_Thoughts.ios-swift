//
//  FirstViewController.swift
//  Happy Thoughts
//
//  Created by Cora Hays-Magan on 8/11/16.
//  Copyright © 2016 c.haysmagan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblThoughts: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // returning to view
    override func viewWillAppear(animated: Bool) {
        tblThoughts.reloadData()
    }
    
    // UITableDelegate to remove a thought
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if (editingStyle == UITableViewCellEditingStyle.Delete){
            thoughtMgr.thoughts.removeAtIndex(indexPath.row)
            tblThoughts.reloadData()
        }
    }
    
    
    //UITable View Data Sourc
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return thoughtMgr.thoughts.count
    }
    
    
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
            let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default Tasks")
            
            cell.textLabel?.text = thoughtMgr.thoughts[indexPath.row].name
            cell.detailTextLabel?.text = thoughtMgr.thoughts[indexPath.row].description
            
            return cell
        }
    

}

