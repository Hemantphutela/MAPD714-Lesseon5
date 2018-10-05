//
//  BlueViewController.swift
//  MAPD714-Lesseon5
//
//  Created by Hemant Phutela on 04/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
    @IBAction func blueButtonPressed(sender: UIButton){
        let alert = UIAlertController(title: "Blue View Button Pressed", message: "You pressed the button on blue view", preferredStyle: .alert)
        let action = UIAlertAction(title: "Yes I did", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
