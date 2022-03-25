//
//  SegundaTelaViewController.swift
//  Layout
//
//  Created by user210587 on 3/21/22.
//
/*É preciso apertar botão direito no Layout e criar um novo arquivo*/

import UIKit


class SegundaTelaViewController: UIViewController {
    
    @IBOutlet weak var usuarioLabel: UILabel!
    
    @IBOutlet weak var senhaLabel: UILabel!
    
    var usuarioValue : String = ""
    
    var senhaValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*print apenas para visualizar o conteudo*/
        print(usuarioValue)
        print(senhaValue)
        
        /*coloca o texto da primeira tela no label seguido do valor do usuario*/
        usuarioLabel.text =  "\(usuarioLabel.text!): \(usuarioValue) "
        //faz o mesmo mas para a senha
        senhaLabel.text =  "\(senhaLabel.text!): \(senhaValue) "
    }
    
}
