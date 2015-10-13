//
//  SearchViewController.swift
//  codepath-4-tumblr
//
//  Created by Sebastian Drew on 10/8/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var loadingImage: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    
    var loadingAnimation: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        scrollView.contentSize = searchFeed.image!.size
        
        searchFeed.alpha = 0
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        loadingAnimation = UIImage.animatedImageWithImages(images, duration: 0.75)
        
        loadingImage.image = loadingAnimation
        
        UIView.animateWithDuration(0.2, delay: 2, options: [], animations: { () -> Void in
            self.loadingImage.alpha = 0
            }) { (Bool) -> Void in
                UIView.animateWithDuration(0.2, animations: { () -> Void in
                    self.searchFeed.alpha = 1
                })
        }
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        searchFeed.alpha = 0
        loadingImage.alpha = 1
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
