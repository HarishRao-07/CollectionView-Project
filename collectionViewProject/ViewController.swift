//
//  ViewController.swift
//  collectionViewProject
//
//  Created by rd on 19/08/21.
//  Copyright © 2021 vishnu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var arrlabel = ["Watch1","Watch2","Watch3","Watch4","Watch5","Watch6","Watch7","Watch8","Watch9","Watch10","Watch11","Watch12","Watch13","Watch14","Watch15","Watch16","Watch17","Watch18"]
   
    var arrImage = [#imageLiteral(resourceName: "watch-16"),#imageLiteral(resourceName: "watch-10"),#imageLiteral(resourceName: "watch-11"),#imageLiteral(resourceName: "watch-4"),#imageLiteral(resourceName: "watch-17"),#imageLiteral(resourceName: "watch-15"),#imageLiteral(resourceName: "watch-18"),#imageLiteral(resourceName: "watch-14"),#imageLiteral(resourceName: "watch-8"),#imageLiteral(resourceName: "watch-9"),#imageLiteral(resourceName: "watch-1"),#imageLiteral(resourceName: "watch-13"),#imageLiteral(resourceName: "watch-2"),#imageLiteral(resourceName: "watch-5"),#imageLiteral(resourceName: "watch-12"),#imageLiteral(resourceName: "watch-7"),#imageLiteral(resourceName: "watch-6"),#imageLiteral(resourceName: "watch-3")]

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlabel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.image.image = arrImage[indexPath.row]
        cell.label.text = arrlabel[indexPath.row]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let imageDetail:SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        imageDetail.mainImage = arrImage[indexPath.row]
        imageDetail.mainLabel = arrlabel[indexPath.row]
        
        self.navigationController?.pushViewController(imageDetail, animated: true)
    }
    
    
}

extension ViewController:UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/3-2, height: collectionWidth/3-2)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
       return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return  2
    }
}
