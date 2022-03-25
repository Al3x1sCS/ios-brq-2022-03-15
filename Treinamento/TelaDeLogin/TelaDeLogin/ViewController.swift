//
//  ViewController.swift
//  TelaDeLogin
//
//  Created by user210587 on 3/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var titleTop: UILabel!
    @IBAction func loginButton(_ sender: Any) {
        print("O botao foi clicado!")
        titleTop.text = "Efetuando Login..."
        print(emailField.text! as  String)
        print(passField.text! as String)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

