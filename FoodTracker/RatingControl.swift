//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Dayakar Reddy Marri on 5/20/17.
//  Copyright © 2017 dhaya. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

   // MARK Initialization
    
     override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
        
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        // create button
        
        let button = UIButton()
        button.backgroundColor = UIColor.red
        
        // Add constraints
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive
            = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive =
        true
        
        // Add the button to the stack
        addArrangedSubview(button)
    }
    
    
}
