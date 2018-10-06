//
//  AddListingViewController.swift
//  book-app
//
//  Created by DIVYA AND LAUREN on 10/6/18.
//  Copyright © 2018 Brandon Sugarman. All rights reserved.
//

import UIKit

class AddListingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        let shopFeed = self.storyboard?.instantiateViewController(withIdentifier: "shop")as? ViewController
        self.present(shopFeed!, animated:false)
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
