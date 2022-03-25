//
//  TabelaViewController.swift
//  ListaDeFilmes
//
//  Created by user210587 on 3/23/22.
//

import UIKit

class tabelaViewController : UITableViewController {
    
    //para colocar uma ação no botão, é preciso mudar o let pra var
    var filmes : [String] = ["Shrek", "Uma noite alucinante", "Drácula de Bram Stoker"]
    var textoFilmes = ["Pizza com mucarela e molho de tomate", "Pizza com calabreza, cebola, molho de tomate e oregano", "Pizza com palmito, mucarela e molho de tomate"]
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celula.textLabel?.text = filmes[indexPath.row]
        return celula
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let alerta = UIAlertController (title: filmes[indexPath.row], message: textoFilmes[indexPath.row], preferredStyle: .alert)
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
               
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
       
        present(alerta, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

