//
//  ViewController.swift
//  HandsOnMovementFrame
//
//  Created by George Joseph Kristian on 15/05/19.
//  Copyright © 2019 George Joseph Kristian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var box: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func animateBox(_ sender: Any) {
        self.box.moveToByBounds(x: 20, y: 0, duration: 1)
        print("box")
    }
}

extension UIView {
    func moveToByFrame(x: CGFloat, y: CGFloat, duration: Double) {
        print("Frame before [x : ",self.frame.origin.x,", y : ",self.frame.origin.y,", width : ",self.frame.width,", height : ",self.frame.height,"]")
        
        UIView.animate(withDuration: duration, animations: {
            self.frame.origin.y += x
            self.frame.origin.x += y
        }, completion: nil)
        
        print("Frame after [x : ",self.frame.origin.x,", y : ",self.frame.origin.y,", width : ",self.frame.width,", height : ",self.frame.height,"]")
    }
    
    func moveToByBounds(x: CGFloat, y: CGFloat, duration: Double) {
        print("Bounds before [x : ",self.bounds.origin.x,", y : ",self.bounds.origin.y,", width : ",self.bounds.width,", height : ",self.bounds.height,"]")
        
        UIView.animate(withDuration: duration, animations: {
            self.bounds.origin.y += x
            self.bounds.origin.x += y
        }, completion: nil)
        
        print("Bounds after [x : ",self.bounds.origin.x,", y : ",self.bounds.origin.y,", width : ",self.bounds.width,", height : ",self.bounds.height,"]")
    }
}

