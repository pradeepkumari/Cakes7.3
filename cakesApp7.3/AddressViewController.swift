//
//  AddressViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 13/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class AddressViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var isSelectedDeliveryButton = false
    var isSelectedPickupButton = false
    @IBOutlet weak var deliveryBtn: UIButton!

    @IBOutlet weak var pickupBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.sectionHeaderHeight = 40
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pickupBtn(sender: AnyObject)
    {
        isSelectedPickupButton = true
        self.changeAction(false, check2: true)
        
    }

    @IBAction func deliveryBtn(sender: AnyObject) {
        isSelectedDeliveryButton = true
        self.changeAction(true, check2: false)
        self.performSegueWithIdentifier("goto_ReviewOrder", sender: self)
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("AddressCell", forIndexPath: indexPath) as UITableViewCell!
        
        let separator = UIView(frame: CGRectMake(0, 0, cell!.bounds.size.width, 2))
        separator.backgroundColor = UIColor.grayColor()
        cell.contentView.addSubview(separator)
        
        
        let typelbl:UILabel = cell.viewWithTag(1) as! UILabel!
        let addresslbl:UILabel = cell.viewWithTag(2) as! UILabel!
        
         typelbl.font = typelbl.font.fontWithSize(13)
        addresslbl.font = addresslbl.font.fontWithSize(13)
        
        if(indexPath.row == 0)
        {
            typelbl.text = "Other"
            addresslbl.text = "Velachery"
        }
        else
        {
           typelbl.text = "Work"
            addresslbl.text = "Velachery"
        }
        
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 2
    }
    
    
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 40))
        
        let selectAddresslabel = UILabel(frame: CGRect(x: 10, y: 5, width:150, height: 30))
        selectAddresslabel.text = "SELECT ADDRESS"
        selectAddresslabel.textColor = UIColor.blackColor()
        selectAddresslabel.font = selectAddresslabel.font.fontWithSize(14)
        
        
        
        let addNewButton = UIButton(frame: CGRect(x: view.frame.size.width - 100, y: 5, width: 90, height:30))
        addNewButton.backgroundColor = .greenColor()
        addNewButton.setTitle("ADD NEW", forState: .Normal)
        addNewButton.titleLabel?.textColor = UIColor.redColor()
        addNewButton.addTarget(self, action: #selector(AddressViewController.buttonAction(_:)), forControlEvents: .TouchUpInside)
        
        
//        let separator = UIView(frame: CGRectMake(0, 0, view.bounds.size.width, 2))
//        separator.backgroundColor = UIColor.grayColor()
       
        
//        view.addSubview(separator)
        view.addSubview(selectAddresslabel)
        view.addSubview(addNewButton)
        
//        self.view.addSubview(view)
        
        return view
    }
    
    func buttonAction(sender: UIButton!) {
        print("Button tapped")
    }
    
    
    func changeAction(check1:Bool,check2:Bool)
    {
        if(check1)
        {
            deliveryBtn.setImage(UIImage(named: "Delete.png"), forState: UIControlState.Normal)
            
            pickupBtn.setImage(UIImage(named: "rightunselected@2x.png"), forState: UIControlState.Normal)
            
           
        }
        if(check2)
        {
           pickupBtn.setImage(UIImage(named: "Delete.png"), forState: UIControlState.Normal)
            deliveryBtn.setImage(UIImage(named: "rightunselected@2x.png"), forState: UIControlState.Normal)
            
        }
       
        
       
        
    }

    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "goto_ReviewOrder")
        {
            let backItem = UIBarButtonItem()
            backItem.title = "REVIEW ORDER"
            navigationItem.backBarButtonItem = backItem
        }
        
    }
    

    
    
    
    /*
     @IBAction func pickupBtn(sender: AnyObject) {
     }
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
