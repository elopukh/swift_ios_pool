//
//  ViewController.swift
//  D03
//
//  Created by Ekateryna LOPUKH on 2/7/20.
//  Copyright © 2020 Ekateryna LOPUKH. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var ScrollView: UIScrollView!
    var imageView : UIImageView?
    var image = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        imageView = UIImageView(image: image)
        ScrollView.addSubview(imageView!)
        ScrollView.contentSize = (imageView?.frame.size)!
        ScrollView.maximumZoomScale = 100
    }
    func setZoomScale() {
        
        var minZoom = min(self.view.bounds.size.width / imageView!.bounds.size.width, self.view.bounds.size.height / imageView!.bounds.size.height);
        
        if (minZoom > 1.0) {
            minZoom = 1.0;
        }
        
        ScrollView.minimumZoomScale = minZoom;
        ScrollView.zoomScale = minZoom;
        
    }
    
    override func viewWillLayoutSubviews() {
        setZoomScale()
    }

    func viewForZooming(in ScrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
