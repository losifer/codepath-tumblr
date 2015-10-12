//
//  AccountViewController.swift
//  codepath-4-tumblr
//
//  Created by Sebastian Drew on 10/8/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 503)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
