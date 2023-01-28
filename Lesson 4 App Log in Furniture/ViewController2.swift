//
//  ViewController2.swift
//  Lesson 4 App Log in Furniture
//
//  Created by Валентин Ремизов on 07.01.2023.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var nameEnterOutlet: UITextField!
    @IBOutlet weak var nicknameEnterOutlet: UITextField!
    @IBOutlet weak var placeWorkEnterOutlet: UITextField!
    @IBOutlet weak var experienceWorkOutlet: UISegmentedControl!
    @IBOutlet weak var anonymouseOutlet: UISwitch!
    @IBOutlet weak var helpMyProjectOutlet: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonEnterAction(_ sender: Any) {

        if helpMyProjectOutlet.isOn {
            

            let alertController = UIAlertController(title: "", message: "Спасибо за желание помочь, пришлите нам данные своей карты, а дальше мы всё сделаем сами.", preferredStyle: .alert)
            let alertActionOk = UIAlertAction(title: "OK", style: .default) { _ in

                //Видео про переходы очень полезное: https://www.youtube.com/watch?v=I3mRpo-bSD8
                //программно делаем переход через вызов функции (не через сигвей)
                self.transition()

            }

            let alertActionCancel = UIAlertAction(title: "CANCEL", style: .default)
            
            alertController.addAction(alertActionOk)
            alertController.addAction(alertActionCancel)
            self.present(alertController, animated: true)

            alertController.addTextField()
        } else {
            transition()
        }
    }


    //Эта функция выполняет передачу значений из второго ViewController в третий
    //Видео на эту тему: https://www.youtube.com/watch?v=uns1Laaok-8
    func transition () {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)

        //получаем доступ к 3-му ViewController
        if let vc3 = storyBoard.instantiateViewController(identifier: "VC3") as? ViewController3 {

            //присваиваем значение переменной из 3-го ViewController
            vc3.nameVC2 = self.nameEnterOutlet.text!
            vc3.annonymouse = self.anonymouseOutlet
            vc3.experienceWork = self.experienceWorkOutlet

            //показываем переход программно
            self.show(vc3, sender: nil)
        }
    }

//Видео про стандартные кнопки перехода view: https://www.youtube.com/watch?v=ys3TA8MgI2c


}
