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
        box.layer.backgroundColor = #colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)
    }

    @IBAction func animateBox(_ sender: Any) {
        print(self.box.frame)
        UIView.animate(withDuration: 2, animations: {
            self.box.frame.origin.y += 90
            self.box.frame.origin.x += 80
        }, completion: nil)
        print(self.box.frame)
    }
}

