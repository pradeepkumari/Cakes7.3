//
//  ShopViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 10/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{

    @IBOutlet weak var collectionView: UICollectionView!
    var selectedIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        self.automaticallyAdjustsScrollViewInsets = false
        
        collectionView.delegate = self
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: self.view.frame.size.width / 3 - 15, height: 75)
        
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        collectionView!.collectionViewLayout = layout
        
        // Do any additional setup after loading the view.
    }
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 15
        
        
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("itemCell", forIndexPath: indexPath) as UICollectionViewCell
        //
        //            cell.frame.size.width = self.view.frame.size.width/2 - 15
        //            cell.frame.size.height = 150
        cell.layer.cornerRadius = 8
        
        //        self.collectionView.reloadData()
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        selectedIndexpath = indexPath.row
        
        let shopVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("CaketypeViewController") as! UITabBarController
        
        self.navigationController?.pushViewController(shopVC, animated: true)
        
        
//        self.performSegueWithIdentifier("goto_Caketype", sender: self)
    }
    
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
     {
       
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
