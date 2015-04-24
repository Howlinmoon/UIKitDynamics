//
//  ViewController.swift
//  Dynamics Testing
//
//  Created by jim Veneskey on 4/24/15.
//  Copyright (c) 2015 Jim Veneskey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Initialize our Shape Vars
    var greenSquare: UIView?
    var redSquare: UIView?
    var animator: UIDynamicAnimator?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create the shapes
        var dimensions = CGRectMake(25, 25, 60, 60)
        greenSquare = UIView(frame: dimensions)
        greenSquare?.backgroundColor = UIColor.greenColor()

        dimensions = CGRectMake(130, 25, 90, 90)
        redSquare = UIView(frame: dimensions)
        redSquare?.backgroundColor = UIColor.redColor()
    
        // Add them to the screen
        self.view.addSubview(greenSquare!)
        self.view.addSubview(redSquare!)
        
        // Initialize the animator
        animator = UIDynamicAnimator(referenceView: self.view)
        
        // Add gravity
        let gravity = UIGravityBehavior(items: [greenSquare!, redSquare!])
        let direction = CGVectorMake(0.0, 1.0)
        
    
        // Link the animator with the behavior
        animator?.addBehavior(gravity)
        
    }


}

