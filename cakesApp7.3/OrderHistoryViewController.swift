//
//  OrderHistoryViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 09/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class OrderHistoryViewController: UIViewController, UITableViewDataSource,UITabBarDelegate{
    @IBOutlet weak var tableView: UITableView!

    let view1 = UIView()
     var alertController = UIAlertController()
    let fadeButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.navigationController?.navigationBar.barTintColor = UIColor.redColor()
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        
        var image = UIImage(named: "Delete.png")
        
        image = image?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: UIBarButtonItemStyle.Plain, target: self, action:#selector(OrderHistoryViewController.rightButtonAction(_:)))
        
        // Do any additional setup after loading the view.
    }

    func rightButtonAction(sender: UIBarButtonItem)
    {
        print("Filter Clicked")
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("paymentCell", forIndexPath: indexPath) as UITableViewCell!
        
        cell.backgroundColor = UIColor.whiteColor()
//        cell.layer.borderColor = UIColor.grayColor().CGColor
//        cell.layer.borderWidth = 1
//        cell.layer.cornerRadius = 2
        cell.clipsToBounds = true
        
        cell.contentView.backgroundColor = UIColor.whiteColor()
        
     
        
//        let whiteRoundedView : UIView = UIView(frame: CGRectMake(10, 20, self.view.frame.size.width - 20, 161))
//        
//        whiteRoundedView.layer.backgroundColor = CGColorCreate(CGColorSpaceCreateDeviceRGB(), [1.0, 1.0, 1.0, 0.8])
//        whiteRoundedView.layer.masksToBounds = false
//        whiteRoundedView.layer.cornerRadius = 2.0
//        whiteRoundedView.layer.shadowOffset = CGSizeMake(-1, 1)
//        whiteRoundedView.layer.shadowOpacity = 0.2
//        
//        cell.contentView.addSubview(whiteRoundedView)
//        cell.contentView.sendSubviewToBack(whiteRoundedView)
        
        
        
        let namelbl:UILabel = cell.viewWithTag(1) as! UILabel!
        let amountlbl:UILabel = cell.viewWithTag(2) as! UILabel!
        let paymentlbl:UILabel = cell.viewWithTag(3) as! UILabel!
        let statuslbl:UILabel = cell.viewWithTag(4) as! UILabel!
        let orderdatelbl:UILabel = cell.viewWithTag(5) as! UILabel!
        
        
         let cancelBtn:UIButton = cell.viewWithTag(6) as! UIButton!
        cancelBtn.addTarget(self, action: "connected:", forControlEvents: .TouchUpInside)
        
        amountlbl.text = "12.00"
        namelbl.text = "Nuts and Bakes"
        
       cell.selectionStyle = UITableViewCellSelectionStyle.None
       
        
        return cell
    }
    
    func connected(sender: UIButton){
        let cell: UITableViewCell? = (sender.superview!.superview as? UITableViewCell)
        print(sender.superview?.superview)
        let indexPath:NSIndexPath = tableView.indexPathForCell(cell!)!
        print(indexPath.row)
        
        self.disableTouchesOnView(self.view)
        self.callalertfunc()
        
        
        
    }
    
    func callalertfunc(){
       
        alertController.view.tintColor = UIColor.blackColor()
        alertController = UIAlertController(title: "Cakes",
                                            message: "Are you sure, You want to cancel this order",
                                            preferredStyle: .Alert)
        
        let action1 = UIAlertAction(title: "YES", style: UIAlertActionStyle.Default, handler: {[weak self](paramAction:UIAlertAction!) in
           
            })
        
        
        let action2 = UIAlertAction(title: "NO", style: UIAlertActionStyle.Default, handler: {[weak self](paramAction:UIAlertAction!) in
           
            })
        
        
        alertController.addAction(action1)
        alertController.addAction(action2)
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return 25.0
    }
    
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
       
        
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        if(indexPath.row == 2)
//        {
//            self.performSegueWithIdentifier("goto_Order", sender: self)
//        }
        
    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    
    func fadeAction(sender: UIButton!) {
        print(" Fade Button tapped")
        
        alertController.removeFromParentViewController()
        fadeButton.removeFromSuperview()
        
    }
    
    func disableTouchesOnView(view : UIView)
    {
        fadeButton.frame = CGRect(x: 0,y: 0,width: self.view.frame.size.width,height: self.view.frame.size.height)
     
        fadeButton.backgroundColor = UIColor.clearColor()
        fadeButton.alpha = 1.0
        fadeButton.tag = 42
        fadeButton.addTarget(self, action: #selector(OrderHistoryViewController.fadeAction(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(fadeButton)
       
    }
    
    func enableTouchesOnView(view : UIView)
    {
        view.viewWithTag(42)?.removeFromSuperview()
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
