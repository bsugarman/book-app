//
//  SignUpViewController.swift
//  book-app
//
//  Created by Brandon Sugarman on 9/17/18.
//  Copyright © 2018 Brandon Sugarman. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //figure out how to make this a class function in the future
    @IBAction func goToShop(_ sender: UIButton) {
        let shop = self.storyboard?.instantiateViewController(withIdentifier: "shop")as? ViewController
        self.present(shop!, animated:false)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
