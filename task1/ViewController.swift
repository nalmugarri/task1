//
//  ViewController.swift
//  task1
//
//  Created by Noura Khaled on 10/12/2018.
//  Copyright © 2018 Noura Almugarri. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width - 8
        return CGSize(width: width/3, height: width/3)
        //Return Value: The width and height of the specified item. Both values must be greater than 0.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 3, bottom: 0, right: 3)
        // Return Value: The margins to apply to items in the section.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
        // return value: The minimum space (measured in points) to apply between successive lines in a section.
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
        // return value: The minimum space (measured in points) to apply between successive items in the lines of a section.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return butterflies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.butterflyImage.image = UIImage(named: butterflies[indexPath.item])
        return cell
    }
    
    var butterflies = ["pic1","pic2","pic3","pic4","pic5","pic6","pic7","pic8","pic9","pic10","pic11","pic12","pic13","pic14","pic15","pic16","pic17","pic18"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

