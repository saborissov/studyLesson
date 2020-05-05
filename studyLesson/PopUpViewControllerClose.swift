//
//  PopUpViewControllerClose.swift
//  studyLesson
//
//  Created by Сергей Борисов on 04.05.2020.
//  Copyright © 2020 Сергей Борисов. All rights reserved.
//

import UIKit

class PopUpViewControllerClose: UIViewController {
    let mySwith = UISwitch()
    @IBOutlet weak var messageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageView.layer.cornerRadius = 24
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        
//        self.mySwith.frame = CGRect(x: 50, y: 100, width: 0, height: 0)
//        self.view.addSubview(mySwith)
        
    }
    override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         
     }
    
    @IBAction func closePopUp2(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    



}
