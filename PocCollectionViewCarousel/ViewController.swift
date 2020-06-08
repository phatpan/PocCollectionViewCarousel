//
//  ViewController.swift
//  PocCollectionViewCarousel
//
//  Created by Phatcharaphan Ananpreechakun on 8/6/20.
//  Copyright © 2020 Phatcharaphan Ananpreechakun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let layout = UICollectionViewFlowLayout()
    layout.itemSize = CGSize(width: view.frame.width, height: 150)
    layout.scrollDirection = .horizontal
    layout.minimumLineSpacing = 0
    layout.minimumInteritemSpacing = 0

    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "collectionViewCell")
    collectionView.translatesAutoresizingMaskIntoConstraints = false
    collectionView.isPagingEnabled = true

    view.addSubview(collectionView)

    collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    collectionView.heightAnchor.constraint(equalToConstant: 150).isActive = true

    collectionView.dataSource = self
  }
}

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let collectionCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath)
    collectionCell.backgroundColor = [UIColor.green, .red, .black, .blue, .yellow].randomElement()
    return collectionCell
  }


}

