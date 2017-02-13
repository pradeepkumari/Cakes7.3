//
//  TabbarAccountViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 09/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class TabbarAccountViewController: UIViewController, UITabBarDelegate,UITableViewDataSource{

    var indexpath:Int = 0
    
   
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("tableCell", forIndexPath: indexPath) as UITableViewCell!
        
        let amountlbl:UILabel = cell.viewWithTag(1) as! UILabel!
        
       if(indexPath.row == 2)
       {
            amountlbl.text = "Order History"
        }
       else{
        amountlbl.text = "Notification"
        }
     

        
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 8
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
    
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row == 2)
        {
            self.performSegueWithIdentifier("goto_Order", sender: self)
        }
       
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "goto_Order")
        {
            let backItem = UIBarButtonItem()
            backItem.title = "ORDER HISTORY"
            navigationItem.backBarButtonItem = backItem
        }
        
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
