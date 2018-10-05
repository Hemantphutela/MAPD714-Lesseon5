//
//  SwitchingViewController.swift
//  MAPD714-Lesseon5
//
//  Created by Hemant Phutela on 04/10/2018.
//  Copyright © 2018 Hemant Phutela. All rights reserved.
//

import UIKit

class SwitchingViewController: UIViewController {

    //private instance variable
    private var blueViewController: BlueViewController!
    private var yellowViewController: YellowViewController!
    
    private func switchViewController(from fromVC:UIViewController?, to toVC:UIViewController?){
        if fromVC != nil{
            fromVC!.willMove(toParentViewController: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
        }
        if toVC != nil {
            self.addChildViewController(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParentViewController: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueViewController = storyboard?.instantiateViewController(withIdentifier: "Blue") as! BlueViewController
        
        blueViewController.view.frame = view.frame
        switchViewController(from: nil, to: blueViewController)
        
    }
    
    @IBAction func switchViews(sender: UIBarButtonItem) {
        if yellowViewController?.view.superview == nil{
            if yellowViewController ==  nil{
                yellowViewController = storyboard?.instantiateViewController(withIdentifier: "Yellow") as! YellowViewController
            }
        }else if blueViewController?.view.superview == nil{
            if blueViewController ==  nil{
                blueViewController = storyboard?.instantiateViewController(withIdentifier: "Blue") as! BlueViewController
    }
        }
        //Switch view controllers
        if blueViewController != nil && blueViewController!.view.superview != nil{
            yellowViewController.view.frame = view.frame
            switchViewController(from: blueViewController, to:yellowViewController)
        } else {
            blueViewController.view.frame = view.frame
            switchViewController(from: yellowViewController, to:blueViewController)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        if blueViewController != nil && blueViewController!.view.superview == nil{
            blueViewController = nil
        }
        if yellowViewController != nil && yellowViewController!.view.superview == nil{
            yellowViewController = nil
        }
    }
    

  

}
