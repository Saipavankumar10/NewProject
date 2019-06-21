//
//  ViewController.swift
//  NewProject
//
//  Created by saipavankumar on 21/06/19.
//  Copyright © 2019 saipavankumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource,d{
  
    var imagearray = ["png1.png","png2.png","png1.png","png1.png"]

    @IBOutlet weak var ListView_CollectionView: UICollectionView!
    
    @IBOutlet weak var firstview: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ListView_CollectionView.delegate=self
        ListView_CollectionView.dataSource=self
        
        firstview.contentSize = CGSize(width: 2000, height: firstview.frame.size.height)
        
        one()
       
    }
    func one(){
    
    let deals = ["sai png.png","sai png.png","sai png.png","sai png.png","sai png.png","sai png.png"]
     
    
        
    var p = 10
    let q = 300
    for deal in deals{
    
    let pp = p
        
    let dealView = UIView()
        
    dealView.frame = CGRect(x: p, y: 0, width:q, height: Int(firstview.frame.size.height))
    dealView.layer.cornerRadius = 3
    dealView.backgroundColor = UIColor.white
    dealView.layer.shadowColor = UIColor.gray.cgColor
    dealView.layer.shadowOffset = CGSize(width: 0, height:1.75)
    dealView.layer.shadowOpacity = 0.3
    dealView.layer.shadowRadius = 0.5
    firstview.addSubview(dealView)
   
        
        
    let dealImage = UIImageView()
    dealImage.image = UIImage(named: deal)
    dealImage.frame = CGRect(x: 0, y: 0, width: dealView.frame.size.width, height: dealView.frame.size.height)
    dealView.addSubview(dealImage)
    
    print(deal)
    p = pp+q+10
    print(p)
        
    }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagearray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let list_cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListViewcell", for: indexPath)as! ListViewcell
        list_cell.image_View.image=UIImage(named:imagearray[indexPath.row])
        return list_cell
    }

}


