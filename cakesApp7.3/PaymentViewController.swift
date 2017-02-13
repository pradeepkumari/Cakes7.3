//
//  PaymentViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 13/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var payableAmountLabel: UILabel!
    var paymentTypesArray:NSArray!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paymentTypesArray = ["Cash On Delivery","Net Banking", "Credit Card","Debit Card"]
        tableView.estimatedRowHeight = 50
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell!
        
       cell.textLabel?.text = paymentTypesArray[indexPath.row] as? String
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        let separator = UIView(frame: CGRectMake(0, 0, cell!.bounds.size.width, 2))
        separator.backgroundColor = UIColor.grayColor()
        cell.contentView.addSubview(separator)
        
        
        
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
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
