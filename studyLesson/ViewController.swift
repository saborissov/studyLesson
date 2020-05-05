//
//  ViewController.swift
//  studyLesson
//
//  Created by Сергей Борисов on 04.05.2020.
//  Copyright © 2020 Сергей Борисов. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    let mySwitch = UISwitch()
    
    //создаем объект: mySwitch2 типа UISwitch
    let mySwith2 = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Создали эксземпляр объекта свич
        self.mySwitch.frame = CGRect(x: 290, y: 70, width: 0, height: 0)
        self.view.addSubview(self.mySwitch)
        //Свич по умолчанию включен
        //self.mySwitch.setOn(true, animated: true)
        //проверка на включение свича
        self.mySwitch.addTarget(self,
        action: #selector(swithChange(paramTarget:)), for: .valueChanged)
        
        //Располагаем свич по центру
//        self.mySwith2.frame = CGRect.zero
//        self.mySwith2.center = self.view.center
//        self.view.addSubview(mySwith2)
    }
    
    @objc func swithChange(paramTarget:UISwitch) {
        if self.mySwitch.isOn{
            let popUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "popUpVCid") as! PopUpViewController // 1
            
            self.addChild(popUpVC) // 2
            popUpVC.view.frame = self.view.frame  // 3
            self.view.addSubview(popUpVC.view) // 4
            
            popUpVC.didMove(toParent: self) // 5
        }
        else{
            let popUpClose = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "popUpVC_close")as!
            PopUpViewControllerClose
            self.addChild(popUpClose)
            popUpClose.view.frame=self.view.frame
            self.view.addSubview(popUpClose.view)
            popUpClose.didMove(toParent: self)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
}







