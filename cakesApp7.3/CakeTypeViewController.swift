//
//  CakeTypeViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 10/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class CakeTypeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
         self.automaticallyAdjustsScrollViewInsets = false
        scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 1000)
        // Do any additional setup after loading the view.
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
