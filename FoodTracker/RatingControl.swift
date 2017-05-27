//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Dayakar Reddy Marri on 5/20/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import UIKit

 @IBDesignable class RatingControl: UIStackView {

    //MARK: Properties
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
    {
        didSet {
            setupButtons()
        }
    }
    
    
    @IBInspectable var starCount: Int = 5
    
    private var ratingButtons = [UIButton]()
    var rating = 0
    
   // MARK Initialization
    
     override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
        
        
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed ! ")
    }
    
    
    
    //MARK: Private Methods
    
    private func setupButtons() {
       
        
        for _ in 0..<starCount {
            
             // create button
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constraints below
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: starSize.height).isActive
            = true
        button.widthAnchor.constraint(equalToConstant: starSize.width).isActive =
        true
        
        // Setup the button action
        button.addTarget(self, action:
            #selector(RatingControl.ratingButtonTapped(button:)), for:
            .touchUpInside)
        
        // Add the button to the stack
        addArrangedSubview(button)
            
            // Add the new button to the rating button array
        ratingButtons.append(button)
        }
    }
    
}
