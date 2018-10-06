//
//  ViewController.swift
//  book-app
//
//  Created by DIVYA GANESAN + LAUREN LIN on 9/12/18.
//  Copyright © 2018 DIVYA GANESAN + LAUREN LIN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goToLogin(_ sender: UIButton) {
        let login = self.storyboard?.instantiateViewController(withIdentifier: "home")as? ViewController
        self.present(login!, animated:false)
    }
    
    @IBAction func goToSignUp(_ sender: UIButton) {
        let signUp = self.storyboard?.instantiateViewController(withIdentifier: "signUp")as? ViewController
        self.present(signUp!, animated:false)
        
    }
    
    
}

