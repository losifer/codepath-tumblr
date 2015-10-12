//
//  LoginViewController.swift
//  codepath-4-tumblr
//
//  Created by Sebastian Drew on 10/11/15.
//  Copyright © 2015 los. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var loginContainer: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var calcenButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    var initialY: CGFloat!
    let offset: CGFloat = -50
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        initialY = loginContainer.frame.origin.y
        
        loginContainer.layer.cornerRadius = 6
        
        emailField.becomeFirstResponder()
        
        loginButton.enabled = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didEditField(sender: AnyObject) {
        if emailField.text == "" || passwordField.text == "" {
            loginButton.enabled = false
        } else {
            loginButton.enabled = true
        }
    }

    func keyboardWillShow(notification: NSNotification!) {
        
        self.loginContainer.frame.origin = CGPoint(x: self.loginContainer.frame.origin.x, y: self.initialY + self.offset)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
        self.loginContainer.frame.origin = CGPoint(x: self.loginContainer.frame.origin.x, y: self.initialY)
        
    }

    @IBAction func tapOutDidPress(sender: UITapGestureRecognizer) {
        
        loginContainer.endEditing(true)
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func cancelButtonDidTouch(sender: AnyObject) {
    
    }
    
    
    @IBAction func loginButtonDidTouch(sender: AnyObject) {
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        modalPresentationStyle = UIModalPresentationStyle.Custom
        transitioningDelegate = self
    }

}
