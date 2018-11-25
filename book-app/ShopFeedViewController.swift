//
//  ShopFeedViewController.swift
//  book-app
//
//  Created by Brandon Sugarman on 9/17/18.
//  Copyright © 2018 Brandon Sugarman. All rights reserved.
//

import UIKit
import Firebase

class ShopFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var ref: DatabaseReference! //create variable reference with type database reference, hit command b to check
    var bookInfoArray: Array<Array<String>>!
    override func viewDidLoad() {
        ref = Database.database().reference().child("Books") //have to do to use firebase to access from any class
        ref.observeSingleEvent(of: DataEventType.value, with: {(snapshot) in
            for bookID in snapshot.children.allObjects as! [DataSnapshot] {
                print(type(of:bookID.value!))
                
            }
        })
        super.viewDidLoad()
        registerTableViewCells()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 100
        tableView.reloadData()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as? CustomTableViewCell
        return cell!
        
    }
    
    @IBAction func goToListing(_ sender: UIButton) {
        let addListing = self.storyboard?.instantiateViewController(withIdentifier: "addListing")as! AddListingViewController
        self.present(addListing, animated:false)
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //method that allows us to register table view cell
    func registerTableViewCells() {
        //variable is the cell
        let customCell = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.tableView.register(customCell, forCellReuseIdentifier: "CustomTableViewCell")
        
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
