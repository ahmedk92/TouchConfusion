//
//  ViewController.swift
//  TouchConfiusion
//
//  Created by Ahmed Khalaf on 6/20/20.
//  Copyright © 2020 io.github.ahmedkhalaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let data = Array(repeating: "Click me!", count: 100)
    
    @IBAction private func handleTap() {
        print("From tappable view.")
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Cell
        cell.label.text = data[indexPath.row]
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(data[indexPath.row])
    }
}

class Cell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
}
