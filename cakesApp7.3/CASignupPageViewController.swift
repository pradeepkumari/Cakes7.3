//
//  CASignupPageViewController.swift
//  cakesApp7.3
//
//  Created by Vertace on 09/02/17.
//  Copyright © 2017 vertace. All rights reserved.
//

import UIKit

class CASignupPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var skipsignupBtn: UIButton!
    @IBOutlet weak var termsandconditionBtn: UIButton!
    @IBOutlet weak var signinBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var phonenumberTextfield: UITextField!
    @IBOutlet weak var usernameTextfield: UITextField!
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var termsandconditionBtnAction: UIButton!
    @IBAction func signinBtnAction(sender: AnyObject) {
    }
    @IBAction func signupBtnAction(sender: AnyObject) {
    }
    @IBAction func skipSignupBtnAction(sender: AnyObject) {
        self.performSegueWithIdentifier("goto_Skipsignup", sender: self)

        
    }
    
    
    func createUnderLineStylingForButton(button:UIButton)
    {
        
        let attributes = [NSUnderlineStyleAttributeName: NSUnderlineStyle.StyleSingle.rawValue]
        let attributedText = NSAttributedString(string: button.currentTitle!, attributes: attributes)
        
        button.titleLabel?.attributedText = attributedText
        
    }
    
    
    
    override func viewDidAppear(animated: Bool) {
        
        //STYLING
        self.createRoudedTextField(usernameTextfield, placeHolderText: "  User Name")
        self.createRoudedTextField(passwordTextfield, placeHolderText: "  Password")
        self.createRoudedTextField(phonenumberTextfield, placeHolderText: "  Phone Number")
        self.createRoudedTextField(emailTextfield, placeHolderText: "  Email")
        
        self.createUnderLineStylingForButton(signinBtn)
        self.createUnderLineStylingForButton(termsandconditionBtn)
        self.createUnderLineStylingForButton(skipsignupBtn)
    }
    
    
    
    func createRoudedTextField(textField:UITextField, placeHolderText:String)
    {
        //        var frameRect = textField.frame;
        //        frameRect.size.height = 60;
        //        textField.frame = frameRect;
        let placeHolder=NSAttributedString(string: placeHolderText, attributes:    [NSForegroundColorAttributeName : UIColor.whiteColor()])
        textField.attributedPlaceholder=placeHolder
        
        textField.rightViewMode = UITextFieldViewMode.Always
        let imageView = UIImageView(frame: CGRect(x: -5, y: 0, width: 20, height: 20))
        let image = UIImage(named:"Delete.png" )
        imageView.image = image
        textField.rightView = imageView
        
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
