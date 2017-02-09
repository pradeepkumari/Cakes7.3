//
//  ViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 09/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var forgotPwdBtn: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var signupBtn: UIButton!
    
    @IBOutlet weak var skipLogin: UIButton!
    @IBOutlet weak var termsAndCondition: UIButton!
    override func viewDidAppear(animated: Bool)
    {
        //STYLING
        self.createRoudedTextField(usernameTextfield, placeHolderText: "User Name")
        self.createRoudedTextField(passwordTextfield, placeHolderText: "Password")
        self.createBorderStylingForButton(loginBtn)
        self.createUnderLineStylingForButton(signupBtn)
        self.createUnderLineStylingForButton(forgotPwdBtn)
        self.createUnderLineStylingForButton(termsAndCondition)
        self.createUnderLineStylingForButton(skipLogin)
        
    }
    
    func createRoudedTextField(textField:UITextField, placeHolderText:String)
    {
        let placeHolder=NSAttributedString(string: placeHolderText, attributes:[NSForegroundColorAttributeName:UIColor.whiteColor()])
        textField.attributedPlaceholder=placeHolder
        
        textField.rightViewMode = UITextFieldViewMode.Always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(named:"Delete.png" )
        imageView.image = image
        textField.rightView = imageView
        
    }
    
    
    func createBorderStylingForButton(button:UIButton)
    {
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
    func createUnderLineStylingForButton(button:UIButton)
    {
        let attributes = [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue]
        let attributedText = NSAttributedString(string: button.currentTitle!, attributes: attributes)
        button.titleLabel?.attributedText = attributedText
    }
    @IBAction func termsAndConditionBtnAction(sender: AnyObject) {
    }
    
    @IBAction func skiploginBtnAction(sender: AnyObject) {
    }
    @IBAction func signupBtnAction(sender: AnyObject)
    {
        self.performSegueWithIdentifier("goto_signupPage", sender: self)
    }
    @IBAction func forgotPwdAction(sender: AnyObject) {
    }
    @IBAction func loginBtnAction(sender: AnyObject)
    {
         self.performSegueWithIdentifier("goto_Hometabbar", sender: self)
    }

    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

