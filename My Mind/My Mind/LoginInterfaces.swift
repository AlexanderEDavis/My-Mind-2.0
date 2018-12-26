//
//  LoginInterfaces.swift
//  
//
//  Created by Alexander Davis on 26/12/2018.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth

class LoginView: UIViewController {
    
    @IBOutlet weak var Emailtbx: UITextField!
    @IBOutlet weak var Passwordtbx: UITextField!
    @IBAction func Loginbtn(_ sender: UIButton) {
        if self.Emailtbx.text == "" || self.Passwordtbx.text == "" {
            
            //Alert to tell the user that there was an error because they didn't fill anything in the textfields because they didn't fill anything in
            
            let alertController = UIAlertController(title: "Error", message: "Please enter an email and password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        } else {
            
            FIRAuth.auth()?.signIn(withEmail: self.Emailtbx.text!, password: self.Passwordtbx.text!) { (user, error) in
                
                if error == nil {
                    
                    //Print into the console if successfully logged in
                    print("You have successfully logged in")
                    
                    //Go to the MainController if the login is sucessful
                    let alertController = UIAlertController(title: "Welcome", message: "You have successfully logged in", preferredStyle: .alert)
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainController")
                    let defaultAction = UIAlertAction(title: "OK", style: .default, handler: { action in self.present(vc!, animated: true, completion: nil);})
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                } else {
                    
                    //Tells the user that there is an error and then gets firebase to tell them the error
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

class SignUp : UIViewController {
    
    @IBOutlet weak var Emailtbx: UITextField!
    @IBOutlet weak var Passwordtbx: UITextField!
    @IBAction func createAccountbtn(_ sender: UIButton) {
        if Emailtbx.text == "" {
            let alertController = UIAlertController(title: "Error", message: "Please enter your email and password", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            FIRAuth.auth()?.createUser(withEmail: Emailtbx.text!, password: Passwordtbx.text!) { (user, error) in
                
                if error == nil {
                    let alertController = UIAlertController(title: "Sign Up Complete", message: "You have Successfully Signed Up", preferredStyle: .alert)
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "Login")
                    let defaultAction = UIAlertAction(title: "OK", style: .default, handler: { action in self.present(vc!, animated: true, completion: nil);})
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                    
                } else {
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
            }
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

class ForgotPass : UIViewController {
    
    @IBOutlet weak var Emailtbx: UITextField!
    @IBAction func Resetbtn(_ sender: UIButton) {
        if self.Emailtbx.text == "" {
            let alertController = UIAlertController(title: "Oops!", message: "Please enter an email.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        } else {
            FIRAuth.auth()?.sendPasswordReset(withEmail: self.Emailtbx.text!, completion: { (error) in
                
                var title = ""
                var message = ""
                
                if error != nil {
                    title = "Error!"
                    message = (error?.localizedDescription)!
                } else {
                    title = "Success!"
                    message = "Password reset email sent."
                    self.Emailtbx.text = ""
                }
                
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "Login")
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: { action in self.present(vc!, animated: true, completion: nil);})
                alertController.addAction(defaultAction)
                
                self.present(alertController, animated: true, completion: nil)
            })
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

class Logout : UIViewController {
    
    @IBAction func Logoutbtn(_ sender: UIButton) {
        if FIRAuth.auth()?.currentUser != nil {
            do {
                try FIRAuth.auth()?.signOut()
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "OnBoard")
                present(vc, animated: true, completion: nil)
                
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
