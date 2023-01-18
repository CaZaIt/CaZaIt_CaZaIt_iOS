//  collectionviewCell.swift
//  cazait_hsseor
//
//  Created by 홍서린 on 2023/01/16.
//
import UIKit

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "view1", for: indexPath) as? view1
        cell?.backgroundColor = UIColor.white
        cell?.layer.cornerRadius = 30
        cell?.layer.shadowColor = UIColor.black.cgColor
        cell?.layer.shadowOffset = CGSize(width: 0, height: 4)
        cell?.layer.shadowRadius = 4
        cell?.layer.shadowOpacity = 0.25
        return cell ?? UICollectionViewCell()
    }
}

extension UIViewController: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width: CGFloat = 343
        let height: CGFloat = 366
        return CGSize(width: width, height: height)
    }
}
