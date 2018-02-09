//
//  HomeViewController.swift
//  ScheduleMaker
//
//  Created by Ava Crnkovic-Rubsamen on 2/9/18.
//  Copyright © 2018 Ava Crnkovic-Rubsamen. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet weak var commitmentButton: UIButton!
    @IBOutlet weak var scheduleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        commitmentButton.layer.cornerRadius = 8
        commitmentButton.layer.borderColor = darkBlue.cgColor
        commitmentButton.layer.borderWidth = 1.0
        
        scheduleButton.layer.cornerRadius = 8
        scheduleButton.layer.borderColor = darkBlue.cgColor
        scheduleButton.layer.borderWidth = 1.0
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
