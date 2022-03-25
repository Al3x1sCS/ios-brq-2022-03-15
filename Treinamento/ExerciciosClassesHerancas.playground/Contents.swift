import UIKit

/*Exercício 1: Implemente a classe Funcionario com nome, salario e os métodos
 addAumento(double valor), ganhoAnual() e exibeDados() - imprime os valores do funcionário.*/

class Funcionario {
    var nome: String?
    var salario: Double?
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
    
    func addAumento() -> Double {
        
        let addAumento: Double = salario! + (salario! * 0.1)
        return addAumento
    }
    
    func ganhoAnual() -> Double {
        let ganhoAnual: Double = (salario! + (salario! * 0.1/*10%*/)) * 12.0
        return ganhoAnual
    }
    
    func exibeDados() {
        print("Nome: \(nome!)")
        print("Salario: R$\(salario!)")
        print("Salario com Aumento: R$\(addAumento())")
        print("Ganho anual: R$\(ganhoAnual())")
               
    }
    
}

print("---Funcionário---")
var toninho = Funcionario(nome: "Antônio Faz-tudo", salario: 1300.5)
toninho.exibeDados()
print("\n")

/*  a. crie a classe Assistente, que também é um funcionário, e que possui um número de
 matrícula. Sobrescreva o método exibeDados().*/
 
 class Assistente: Funcionario {
     
    var matricula: Int?
    
    init(matricula: Int, nome: String, salario: Double) {
        self.matricula = matricula
        super.init(nome: nome, salario: salario)
     }
     
    override func exibeDados() {
        print("Nome: \(nome!)")
        print("Matricula: \(matricula!)")
        print("Salario: \(salario!)")
        print("Salario com Aumento: R$\(addAumento())")
        print("Ganho anual: R$\(ganhoAnual())")
    }
     
 }

print("---Assistente---")
var fulano = Assistente(matricula: 123,nome: "Fulano de Tal", salario: 1300.5)
fulano.exibeDados()
print("\n")
 /*b. sabendo que os Assistentes Técnicos possuem um bônus salarial e que os Assistentes
 Administrativos possuem um turno (dia ou noite) e um adicional noturno, crie as classes
 Tecnico e Administrativo e sobrescreva o método ganhoAnual() de ambas as classes
 (Administrativo e Tecnico).*/

class Tecnico: Assistente {
    var bonus: Double?
    
    init(matricula: Int, nome: String, salario: Double, bonus: Double) {
        self.bonus = bonus
        super.init(matricula: matricula, nome: nome, salario: salario)
     }
    
    override func ganhoAnual() -> Double {
        let ganhoAnual: Double = ((salario! + (salario! * 0.1/*(10%)*/)) * 12.0) + bonus!
        return ganhoAnual
    }
    
}

print("---Assistente Técnico---")
var odjerson = Tecnico(matricula: 124, nome: "Odjerson Salvatoba", salario: 1300.5, bonus: 1500.0)
odjerson.exibeDados()
print("\n")

class Administrativo: Assistente {
    var turno: String?
        
    init(matricula: Int, nome: String, salario: Double, turno: String) {
        self.turno = turno
        super.init(matricula: matricula, nome: nome, salario: salario)
    }
    
    override func ganhoAnual() -> Double {
        var ganhoAnual: Double = ((salario! + (salario! * 0.1/*(10%)*/)) * 12.0) + (salario! + (salario! * 0.1/*(10%)*/))
        
        if turno == "Dia" {
            ganhoAnual = super.ganhoAnual()
        }
        
        return ganhoAnual
    }
    
}
    
print("---Assistente Administrativo---")
var victor = Administrativo(matricula: 125, nome: "Victor Van Helsing", salario: 1300.5, turno: "Dia")
victor.exibeDados()
print("\n")

print("---Assistente Administrativo---")
var dracula = Administrativo(matricula: 126, nome: "Dracula Vladstep", salario: 1300.5, turno: "Noite")
dracula.exibeDados()
print("\n")


//Implemente os diagramas de classe abaixo:
//a.

class Animal {
    var nome: String?
    var raca: String?
    
    init(nome: String, raca: String) {
        self.nome = nome
        self.raca = raca
    }
    
    func caminha() {
        print("\(nome!), caminha.")
        	
    }
    
}

class cachorro: Animal {
       
    func late() {
        print("AU AU!")
    }
}

class gato: Animal{
        
    func mia() {
        print("Miau")
    }
}

var felix = gato(nome: "Felix o Gato", raca: "Gato que fala")
felix.caminha()
felix.mia()

var arnold = cachorro(nome: "Schwarzenegger", raca: "Pinscher")
arnold.caminha()
arnold.late()

//b.

class Pessoa {
    var nome: String?
    var idade: Int?
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    func respira() {
        print("\(nome!), respira.")
            
    }
        
}

class Rico: Pessoa {
    var dinheiro: Double? = +1000000.0
    
    init(nome: String, idade: Int, dinheiro: Double) {
        self.dinheiro = dinheiro
        super.init(nome: nome, idade: idade)
    }
    
    func fazCompras() {
        print("Dinheiro no banco: \(dinheiro!-3527.5)")
    }
}

print("---Ricoo---")
var pessoarica01 = Rico(nome: "Mauricio", idade: 43, dinheiro: 100000000)
pessoarica01.fazCompras()
pessoarica01.respira()

class Pobre: Rico {
    
    func trabalha() {
        print("\(nome!), trabalha muito!")
    }
    override func respira() {
        print("\(nome!), respira com dificuldade.")
    }
}
print("---Pobre---")
var pessoapobre01 = Pobre(nome: "Maria", idade: 31, dinheiro: 5000.0)
pessoapobre01.fazCompras()
pessoapobre01.trabalha()
pessoapobre01.respira()

class Miseravel: Pobre {
    override func trabalha() {
        print("\(nome!), Tenta ganhar dinheiro como pode")
    }
    override func respira() {
        print("\(nome!), respira apenas enquanto o ar for gratuito.")
    }
}
print("---Miseravel---")
var pessoamiseravel01 = Miseravel(nome: "Alan", idade: 48, dinheiro: 1212.0)
pessoamiseravel01.fazCompras()
pessoamiseravel01.trabalha()
pessoamiseravel01.respira()
