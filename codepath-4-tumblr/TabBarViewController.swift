//
//  TabBarViewController.swift
//  codepath-4-tumblr
//
//  Created by Sebastian Drew on 10/8/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var explorePopup: UIImageView!
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        searchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        accountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        trendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        UIView.animateWithDuration(1.0, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: { () -> Void in
            self.explorePopup.transform = CGAffineTransformMakeTranslation(0, -10)
            }, completion: nil)
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func composeButtonDidTouch(sender: AnyObject) {
        
      //  let composeViewController: ComposeViewController
        
       // composeViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ComposeViewController") as! ComposeViewController
        
      //  presentViewController(composeViewController, animated: true, completion: nil)
        
        performSegueWithIdentifier("ComposeViewController", sender: self)
        // explorePopup.hidden = false
        
    }
    
    
    @IBAction func didPressTab(sender: UIButton) {
        
        let previousIndex = selectedIndex
        
        selectedIndex = sender.tag
        
        buttons[previousIndex].selected = false
        
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        sender.selected = true
        
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        
        if sender.tag == 1 {
            explorePopup.hidden = true
        } else {
            explorePopup.hidden = false
        }
        
    }
   
}
