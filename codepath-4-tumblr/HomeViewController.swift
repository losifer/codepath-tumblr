//
//  HomeViewController.swift
//  codepath-4-tumblr
//
//  Created by Sebastian Drew on 10/8/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var homeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 503)
        // scrollView.contentSize = homeImage.image!.size
        UIApplication.sharedApplication().statusBarStyle = .LightContent

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonDidPress(sender: AnyObject) {
        performSegueWithIdentifier("LoginViewController", sender: self)
    }
    
}
