//
//  ShopFeedViewController.swift
//  book-app
//
//  Created by Brandon Sugarman on 9/17/18.
//  Copyright © 2018 Brandon Sugarman. All rights reserved.
//

import UIKit
import Firebase

class ShopFeedViewController: UIViewController {
    var ref: DatabaseReference! //create variable reference with type database reference, hit command b to check
    override func viewDidLoad() {
        ref = Database.database().reference() //have to do to use firebase to access from any class
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
