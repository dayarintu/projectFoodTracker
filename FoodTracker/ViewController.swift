//
//  ViewController.swift
//  FoodTracker
//
//  Created by Dayakar Reddy Marri on 5/19/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    @IBOutlet weak var photoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks
        nameTextField.delegate = self
        
        // When a ViewController instance is loaded, it sets itself as the delegate of its nameTextField property
        
    }
    // MARK UItextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK UIImagePickerControllerDelegate
    
    func imagePickerControllerDidCancel(_ picker:
        UIImagePickerController) {
        // Dismiss the picker if the user is cancelled
        dismiss(animated: true, completion: nil)
        
    }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]){
            
            // The info dictionary may contain multiple representations ofthe image. You want to use the original.
            
            guard let selectedImage =
                info[UIImagePickerControllerOriginalImage] as? UIImage else {
                fatalError("Expected a dictionary containing an image , but was provided the following: \(info) ")
            }
                    // Set photoImageView to display the selected image.
                photoImageView.image = selectedImage
            
            // Dismiss the picker 
            
            dismiss(animated: true, completion: nil)
                    
            
        }
    
    
    // MARK Actions
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        
        // hide the keyboard
        nameTextField.resignFirstResponder()
        
        // // UIImagePickerController is a view controller that lets a user pick media from their photo library
        let imagePickerController = UIImagePickerController()
        
        // Only allow photos to be picked, not taken.
        
        imagePickerController.sourceType = .photoLibrary
        // Make sure ViewController is notified when the user picks an image.
        
        
        imagePickerController.delegate = self
        present(imagePickerController, animated:  true , completion: nil)
        
    }
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        
        mealNameLabel.text = "Default Text"
    }
}

