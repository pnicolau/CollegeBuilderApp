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

    @IBOutlet var tableview: UITableView!
    
    var colleges = ["University of Illinois", "University of Chicago", "NorthWestern University", "Loyola University", "DePaul University"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

