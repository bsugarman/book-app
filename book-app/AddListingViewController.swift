//
//  AddListingViewController.swift
//  book-app
//
//  Created by Divya Ganesan on 10/7/18.
//  Copyright © 2018 Brandon Sugarman. All rights reserved.
//

import UIKit
import Firebase

class AddListingViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var ref:DatabaseReference!
    //! is an optional node, object of type node

    @IBOutlet weak var bookImage: UIImageView!
    var imagePicker: UIImagePickerController!
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var conditionField: UITextField!
    @IBOutlet weak var noteStatusField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    
    @IBAction func postButton(_ sender: UIButton) {
        ref.childByAutoId().setValue([titleField.text, usernameField.text, priceField.text, conditionField.text, noteStatusField.text, descriptionField.text])
    }
    
    
    override func viewDidLoad() {
        //write to firebase
        ref = Database.database().reference().child("Books")
        //points to url of database
        
        
        
        
        
        
        
        
        
        super.viewDidLoad()
        
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(AddListingViewController.tapDetected))
        imagePicker = UIImagePickerController()

        imagePicker.delegate = self
        self.bookImage.isUserInteractionEnabled = true
        self.bookImage.addGestureRecognizer(singleTap) //of type UI Gesture Recognizer
        
    }
    
    
    
    //============================================================================================================================================================
    
    //////
    //
    //PROFILE PICTURE FUNCTIONS
    //
    /////
    
    
    
    //Action
    @objc func tapDetected() {
 
        
        
        let alertController : UIAlertController = UIAlertController(title: "Title", message: "Select Camera or Photo Library", preferredStyle: .actionSheet)
        let cameraAction : UIAlertAction = UIAlertAction(title: "Camera", style: .default, handler: {(cameraAction) in
            print("camera Selected...")
            
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) == true {
                
                self.imagePicker.sourceType = .camera
                self.present()
                
            }else{
                self.present(self.showAlert(Title: "Title", Message: "Camera is not available on this Device or accesibility has been revoked!"), animated: true, completion: nil)
                
            }
            
        })
        
        let libraryAction : UIAlertAction = UIAlertAction(title: "Photo Library", style: .default, handler: {(libraryAction) in
            
            print("Photo library selected....")
            
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) == true {
                
                self.imagePicker.sourceType = .photoLibrary
                self.present()
                
            }else{
                
                self.present(self.showAlert(Title: "Title", Message: "Photo Library is not available on this Device or accesibility has been revoked!"), animated: true, completion: nil)
            }
        })
        
        let cancelAction : UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel , handler: {(cancelActn) in
            print("Cancel action was pressed")
        })
        
        alertController.addAction(cameraAction)
        
        alertController.addAction(libraryAction)
        
        alertController.addAction(cancelAction)
        
        alertController.popoverPresentationController?.sourceView = view
        alertController.popoverPresentationController?.sourceRect = view.frame
        
        self.present(alertController, animated: true, completion: nil)
        
        
        
    }
    
    func present(){
        
        self.present(imagePicker, animated: true, completion: nil)
        
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        print("info of the pic reached :\(info) ")
        self.imagePicker.dismiss(animated: true, completion: nil)
        
    }
    
    
    
    
    //Show Alert
    
    
    func showAlert(Title : String!, Message : String!)  -> UIAlertController {
        
        let alertController : UIAlertController = UIAlertController(title: Title, message: Message, preferredStyle: .alert)
        let okAction : UIAlertAction = UIAlertAction(title: "Ok", style: .default) { (alert) in
            print("User pressed ok function")
            
        }
        
        alertController.addAction(okAction)
        alertController.popoverPresentationController?.sourceView = view
        alertController.popoverPresentationController?.sourceRect = view.frame
        
        return alertController
    }
    
}




