//
//  TabbarHomeViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 09/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class TabbarHomeViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    
    @IBOutlet weak var viewAllBtn: UIButton!
    
     var notificationItems = [String]()
    var selectedIndexpath = 0
    var count = 0
    var no_of_items = 4
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        
        self.navigationController?.navigationBarHidden = true
       notificationItems.append("Delete.png")
         notificationItems.append("Delete.png")
        notificationItems.append("Delete.png")
        notificationItems.append("Delete.png")
        notificationItems.append("Delete.png")
        
        collectionView.delegate = self
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        collectionView.frame.size.height = (viewAllBtn.frame.origin.y - 22) - (placeLabel.frame.origin.y + 8)
        print(collectionView.frame.size.height)
        
        layout.itemSize = CGSize(width: self.view.frame.size.width / 3 - 15, height: collectionView.frame.size.height / 3 )
        print(layout.itemSize.height)
        
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        collectionView!.collectionViewLayout = layout
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(TabbarHomeViewController.respondToSwipeGesture(_:)))
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(TabbarHomeViewController.respondToSwipeGesture(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipeLeft)

    }
    
    func respondToSwipeGesture(gesture: UIGestureRecognizer) {
        
        if let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.Right:
                print(count)
                                self.pageControl.currentPage -= 1
                count = count - 1
                print(count)
                ChangeImageAction()
            case UISwipeGestureRecognizerDirection.Left:
                                count = count + 1
                                self.pageControl.currentPage += 1
                ChangeImageAction()
            default:
                break
            }
        }
    }

    
    
    func ChangeImageAction() {
        
        if (count < 0) {
            count = 4
            self.pageControl.currentPage = 4
        }
        
        
        else if(count >= 5)
        {
            count = 0
            self.pageControl.currentPage = 0
        }
        
        
//        if (no_of_items >= count) {
//            if (count < 0) {
//                count = 0
//                self.pageControl.currentPage = 0
//            }
//             
//            
//            else if(count >= 5)
//            {
//                count = 0
//                self.pageControl.currentPage = 0
//            }
//            let notification = notificationItems[count]
            
            print(count)
            
            let pickedImage = notificationItems[count]
            topImageView.image =  UIImage(named:pickedImage)
            
            
//            
//            count = count + 1
//                        self.pageControl.currentPage += 1
//        }
//        if(count == -1)
//        {
//            count = 4
//            self.pageControl.currentPage = 4
//        }
//        
//        
//        if (no_of_items + 1 == count) {
//            count = 0
//            self.pageControl.currentPage = 0
//        }
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
                return 9
        
        
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
         selectedIndexpath = indexPath.row
//       
        
        
       
        
//        
        let shopVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("ShopViewController") as! UITabBarController

        self.navigationController?.pushViewController(shopVC, animated: true)
//        print(self.navigationController)
        
//        self.performSegueWithIdentifier("goto_Shops", sender: self)
    }
   
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if(segue.identifier == "goto_Shops")
        {
            
//            let tab = segue.destinationViewController as! UITabBarController
//            print(tab)
//            let nav = tab.parentViewController as! UINavigationController
//            print(nav)
//            let nextview = nav.topViewController as! ShopViewController
            print(selectedIndexpath)
            
//            nextview.selectedIndex = selectedIndexpath
        }

    }

}
