//
//  ViewController3.swift
//  Lesson 4 App Log in Furniture
//
//  Created by Валентин Ремизов on 07.01.2023.
//

import UIKit

class ViewController3: UIViewController {
    @IBOutlet weak var welcomeOutlet: UILabel!
    
    var nameVC2 : String = ""
    var experienceWork : UISegmentedControl!
    var annonymouse : UISwitch!


    override func viewDidLoad() {
        super.viewDidLoad()

        //Проверяем switch анонимности
        if annonymouse.isOn {
            welcomeOutlet.text? += "красавчик!"
        } else {
            welcomeOutlet.text? += nameVC2
        }

        //Добавить сюда if с развитием событий, если есть опыт работы и если нету. Создать лейбл еще надо с типом UISegmentedControl!
    }
}
