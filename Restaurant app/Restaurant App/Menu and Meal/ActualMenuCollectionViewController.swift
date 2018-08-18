//
//  ActualMenuCollectionViewController.swift
//  Restaurant App
//
//  Created by Osman Bakari on 8/16/18.
//  Copyright © 2018 Osman Bakari. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MenuItem1"

class ActualMenuCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
       // self.collectionView!.register(SingleCellCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 40
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        if segue.identifier == "item"{
            let controller = segue.destination as! MenuItemViewController
            controller.StringTester = "\(self.collectionView!.numberOfItems(inSection: 0))"
        }
        else
        {
            
        }
        // Pass the selected object to the new view controller.
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       // collectionView.register(SingleCellCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! SingleCellCollectionViewCell
        
    
        // Configure the cell
        if(indexPath.row % 2 == 0)
        {
            cell.backgroundColor = UIColor.white
            cell.Price.text! = "$" + "7.98"
            cell.ReferToDetailScreen.text! = "Please click to see meal details."
        }
        else
        {
            cell.backgroundColor = UIColor.black
        }
      //  self.view.backgroundColor = UIColor.
        
    
        return cell
    }

     func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        var screensize = UIScreen.main.bounds
        var screenWidth = screensize.width
        
            return CGSize(width: screenWidth, height: screenWidth/2)
        
    }
    // MARK: UICollectionViewDelegate

    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
       // print("Clicked")
        performSegue(withIdentifier: "item", sender: self)
        return true
        
    }
    

    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
        
    }
 

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
