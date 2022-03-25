//
//  ViewController.swift
//  MeuSegundoProjetoTeste
//
//  Created by user210587 on 3/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var labelButton: UILabel!
    @IBAction func buttonAction(_ sender: Any) {
        print("O botao foi clicado!")
        print(textField.text! as String)
        print(passField.text! as String)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

