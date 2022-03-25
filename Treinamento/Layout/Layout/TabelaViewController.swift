//
//  TabelaViewController.swift
//  Layout
//
//  Created by user210587 on 3/22/22.
//

import UIKit

class tabelaViewController : UITableViewController {
    
    //para colocar uma ação no botão, é preciso mudar o let pra var
    var pizzas : [String] = ["Mussarela", "Calabreza", "Palmito"]
    var descricaoPizzas = ["Pizza com mucarela e molho de tomate", "Pizza com calabreza, cebola, molho de tomate e oregano", "Pizza com palmito, mucarela e molho de tomate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //numero de colunas da lista
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //quantidade de pizzas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzas.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        celula.textLabel?.text = pizzas[indexPath.row]
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(descricaoPizzas[indexPath.row])
        let alerta = UIAlertController (title: pizzas[indexPath.row], message: descricaoPizzas[indexPath.row], preferredStyle: .alert)
        let confirmar = UIAlertAction(title: "Confirmar", style: .default, handler: nil)
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        /*{ (alert)  in
         print("Cliquei em Cancelar")
         self.pizzas.append("Nova Pizza")
         self.descricaoPizzas.append("Nova Pizza")
         self.tableView.reloadData()
     }*/
        
        alerta.addAction(confirmar)
        alerta.addAction(cancelar)
       
        present(alerta, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
