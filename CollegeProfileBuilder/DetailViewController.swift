//
//  DetailViewController.swift
//  CollegeProfileBuilder
//
//  Created by Paula Nicolau on 6/20/16.
//  Copyright © 2016 Paula Nicolau. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var collegeTextField: UITextField!
    @IBOutlet var cityTextField: UITextField!
    @IBOutlet var stateTextField: UITextField!
    @IBOutlet var populationTextField: UITextField!
    @IBOutlet var imageView: UIImageView!
    var college : College!
    
    @IBAction func onTappedSave(sender: UIButton) {
        college.name = collegeTextField.text!
        college.state = stateTextField.text!
        college.population = Int(populationTextField.text!)!
        
        
    }
    
    
    override func viewDidLoad() {
        cityTextField.text = college.name
        stateTextField.text = college.state
        populationTextField.text = String(college.population)
        imageView.image = college.image
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
