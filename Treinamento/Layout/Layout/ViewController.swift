//
//  ViewController.swift
//  Layout
//
//  Created by user210587 on 3/21/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var usuarioTextField: UITextField!
    
    @IBOutlet var senhaTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        /*as Any pode ser deletado caso precise*/
        //print(segue.identifier)
        if (segue.identifier == "loginParaSeguntaTelaSegue"){
        //mudar let pra var caso precise
        let segundaTela = segue.destination as! SegundaTelaViewController
            
            segundaTela.usuarioValue = usuarioTextField.text!
            segundaTela.senhaValue = senhaTextField.text!
        }
    }
}



