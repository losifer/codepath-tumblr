//
//  ComposeViewController.swift
//  codepath-4-tumblr
//
//  Created by Sebastian Drew on 10/10/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController, UIViewControllerTransitioningDelegate {


    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    @IBOutlet weak var nevermindLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
     //  textButton.alpha = 0
        photoButton.frame.origin.y = 600
        chatButton.frame.origin.y = 600
        quoteButton.frame.origin.y = 600
        textButton.frame.origin.y = 600
        linkButton.frame.origin.y = 600
        videoButton.frame.origin.y = 600
        nevermindLabel.frame.origin.y = 600
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
//        
//        UIView.animateWithDuration(0.3, animations: { () -> Void in
//            self.textButton.alpha = 1
//            }, completion: nil)

        
        UIView.animateWithDuration(0.4, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.85, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.photoButton.frame.origin.y = 169
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.05, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.85, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.chatButton.frame.origin.y = 302
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.1, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.85, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.quoteButton.frame.origin.y = 169
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.15, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.85, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.textButton.frame.origin.y = 169
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.85, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.linkButton.frame.origin.y = 302
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.25, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.85, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.videoButton.frame.origin.y = 302
            }, completion: nil)
        UIView.animateWithDuration(0.4, delay: 0.3, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.nevermindLabel.frame.origin.y = 530
            }, completion: nil)
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }

    @IBAction func dismissComposeDidTap(sender: UITapGestureRecognizer) {
        
       UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
        self.nevermindLabel.frame.origin.y = 600
        }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
        self.chatButton.frame.origin.y = 600
        }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.linkButton.frame.origin.y = 600
            }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.15, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.videoButton.frame.origin.y = 600
            }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.2, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.photoButton.frame.origin.y = 600
            }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.25, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.quoteButton.frame.origin.y = 600
            }, completion: nil)
        UIView.animateWithDuration(0.2, delay: 0.3, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.textButton.frame.origin.y = 600
            }) { (Bool) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
        }

    }
}



// self.dismissViewControllerAnimated(true, completion: nil)


