//
//  UsefulFunctions.swift
//  book-app
//
//  Created by Divya Ganesan on 10/7/18.
//  Copyright © 2018 Brandon Sugarman. All rights reserved.
//

import UIKit

class UsefulFunctions: UIViewController {
    
    func switchPages(id: String){
        let page = self.storyboard?.instantiateViewController(withIdentifier: id)as? ViewController
        self.present(page!, animated:false)
    }

}
