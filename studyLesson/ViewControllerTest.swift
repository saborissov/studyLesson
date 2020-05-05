//
//  ViewControllerTest.swift
//  studyLesson
//
//  Created by Сергей Борисов on 05.05.2020.
//  Copyright © 2020 Сергей Борисов. All rights reserved.
//

import UIKit

class ViewControllerTest: UIViewController {
    
    @IBOutlet weak var switTest: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.switTest.addTarget(self, action: #selector(addSomeBody(target2: )), for: .valueChanged)
        
    }
    
    @objc func addSomeBody(target2:UISwitch) {
        if switTest.isOn {
            print("sw on")
        }
        else{
            print("sw off")
        }
    }
    

}
