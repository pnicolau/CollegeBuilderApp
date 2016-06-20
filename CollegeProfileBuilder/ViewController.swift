//
//  ViewController.swift
//  CollegeProfileBuilder
//
//  Created by Paula Nicolau on 6/20/16.
//  Copyright © 2016 Paula Nicolau. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{

    @IBOutlet var tableView: UITableView!
    
    var colleges = ["University of Illinois", "University of Chicago", "NorthWestern University", "Loyola University", "DePaul University"]
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colleges.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)
        cell.textLabel?.text = colleges[indexPath.row]
        return cell
        
    }
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath)
    {
        if editingStyle == .Delete
        {
        colleges.removeAtIndex(indexPath.row)
        tableView.reloadData()
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

