//
//  ApplyCouponViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 13/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class ApplyCouponViewController: UIViewController {

    @IBOutlet weak var discountAmountLabel: UILabel!
    @IBOutlet weak var couponTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        // Do any additional setup after loading the view.
    }
 
    @IBAction func applyCouponAction(sender: AnyObject)
    {
        self.performSegueWithIdentifier("goto_Address", sender: self)
        

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "goto_Address")
        {
            let backItem = UIBarButtonItem()
            backItem.title = "ADDRESS"
            navigationItem.backBarButtonItem = backItem
        }
        
    }

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
