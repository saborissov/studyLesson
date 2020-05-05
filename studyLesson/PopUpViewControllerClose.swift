//
//  PopUpViewControllerClose.swift
//  studyLesson
//
//  Created by Сергей Борисов on 04.05.2020.
//  Copyright © 2020 Сергей Борисов. All rights reserved.

import UIKit

class PopUpViewControllerClose: UIViewController {
    //создаем объект myButton класса UIButton
    let myButton = UIButton()
    let mySwith2 = UISwitch()
    @IBOutlet weak var messageView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageView.layer.cornerRadius = 24
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.75)
        
//        Указываем где расположить кнопку
        self.myButton.frame = CGRect(x: 80, y: 100, width: 200, height: 100)
        //отображаем кнопку на view
        self.view.addSubview(self.myButton)

        //задаем свойства кнопки
        self.myButton.backgroundColor = UIColor.orange
        self.myButton.setTitle("OK", for: .normal)
        myButton.setTitle("Кнопка нажата", for: .highlighted)
        //Расположение свича
        self.mySwith2.frame = CGRect(x: 25, y: 70, width: 0, height: 0)
        self.view.addSubview(mySwith2)
        
        self.mySwith2.addTarget(self, action: #selector(blockedButton(target:)), for: .valueChanged)
        
        
    }
    
    //Блокируем кнопку если свич включен
    @objc func blockedButton (target:UISwitch){
        if target.isOn{
            self.myButton.isUserInteractionEnabled = false
        }
        else{
            self.myButton.isUserInteractionEnabled = true
        }
    }
    override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         
     }
    
    @IBAction func closePopUp2(_ sender: Any) {
        self.view.removeFromSuperview()
    }
    
    



}
