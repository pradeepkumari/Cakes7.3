//
//  TabbarCartViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 09/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class TabbarCartViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
       
        self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
//        scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 1200)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 3
    }
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
       
        tableView.separatorStyle = UITableViewCellSeparatorStyle.None
        
        if(indexPath.section == 0)
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("ProductCartCell", forIndexPath: indexPath) as UITableViewCell!
            
//            cell.contentView.backgroundColor = UIColor.grayColor()
            cell.selectionStyle = UITableViewCellSelectionStyle.None
            cell.contentView.layer.cornerRadius = 5
            let separator = UIView(frame: CGRectMake(0, 0, cell!.bounds.size.width, 10))
            separator.backgroundColor = UIColor.whiteColor()
            cell.contentView.addSubview(separator)
            
            return cell
            
        }
        else if (indexPath.section == 1)
        {
            let cell1 = tableView.dequeueReusableCellWithIdentifier("StaticCell", forIndexPath: indexPath) as UITableViewCell!
            let separator = UIView(frame: CGRectMake(0, 0, cell1!.bounds.size.width, 1))
            separator.backgroundColor = UIColor.grayColor()
            cell1.contentView.addSubview(separator)
            
            
            
            let amountlbl:UILabel = cell1.viewWithTag(1) as! UILabel!
            
        
            if(indexPath.row == 3)
            {
                amountlbl.text = "Apply Coupon"
            }
            else
            {
                amountlbl.text = "Notification"
            }
            return cell1
            
        }
        else
        {
            let cell2 = tableView.dequeueReusableCellWithIdentifier("FooterCell", forIndexPath: indexPath) as UITableViewCell!
            
            cell2.separatorInset = UIEdgeInsetsZero
            return cell2
            
        }
       
//        return 
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        if(section == 0)
        {
            return 2
        }
        else if(section == 1)
        {
           return 6
        }
        else
        {
            return 1
        }
        
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
    }
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        if  (indexPath.section == 0)
        {
            return 100
        }
        else if  (indexPath.section == 1)
        {
            return 34
        }
        else
        {
            return 150
        }
        
        
    }
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.section == 1)
        {
            if(indexPath.row == 3)
            {
                let backItem = UIBarButtonItem()
                backItem.title = "APPLY COUPON"
                navigationItem.backBarButtonItem = backItem
                self.performSegueWithIdentifier("goto_ApplyCoupon", sender: self)
            }
//            let shopVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("goto_ApplyCoupon") as! UINavigationController
            
//            self.navigationController?.pushViewController(shopVC, animated: true)
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
