//
//  PopUpViewController.swift
//  studyLesson
//
//  Created by Сергей Борисов on 04.05.2020.
//  Copyright © 2020 Сергей Борисов. All rights reserved.
//

import UIKit


class PopUpViewController: UIViewController {
    
    @IBOutlet weak var messageView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        messageView.layer.cornerRadius = 24
        self.view.backgroundColor=UIColor.black.withAlphaComponent(0.75)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func closePopUp(_ sender: Any) {
        self.view.removeFromSuperview()
        
    }
}
