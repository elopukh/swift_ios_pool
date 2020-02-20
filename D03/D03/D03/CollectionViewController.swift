//
//  CollectionViewController.swift
//  D03
//
//  Created by Ekateryna LOPUKH on 2/7/20.
//  Copyright © 2020 Ekateryna LOPUKH. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {
    let animalsPictures: [URL] = [
        URL(string: "https://24tv.ua/resources/photos/news/1200x675_DIR/201912/1243261.jpg?201912172137")!,
        URL(string: "https://kipmu.ru/wp-content/uploads/pchlnvtkmdlt.jpg")!,
        URL(string: "https://deita.ru/media/images/150290969715671791.2e16d0ba.fill-950x690-c100.jpg")!,
        URL(string: "https://fakty.ua/photos2/article/31/33/313330.jpg")!,
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return animalsPictures.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)as! CollectionViewCell
        let ImgUrl = animalsPictures[indexPath.item]
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: ImgUrl)
            if data != nil{
                DispatchQueue.main.async {
                    cell.imageView.image = UIImage(data: data!)
                    cell.loader.hidesWhenStopped = true
                    cell.loader.stopAnimating()
                    UIApplication.shared.isNetworkActivityIndicatorVisible = false
            }
            }
            else {
                let alert = UIAlertController(title: "Error", message: "Cannot acses to \(ImgUrl)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                }
            }
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        cell.loader.startAnimating()
        cell.loader.color = (UIColor.white)
        return cell
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let seg = segue.destination as! ViewController
        let cell = sender! as! CollectionViewCell
        if cell.imageView.image != nil {
            seg.image = cell.imageView.image!
    }
    }
}
