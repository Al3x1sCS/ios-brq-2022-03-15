class Funcionario {
/// Classe Pai

    var nome: String?
    var salario: Double?
  
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
/// Função que adiciona o aumento
    
    func addAumento(valor: Double) {
        salario! += self.salario + valor
    }

/// Função que calcula os ganhos anuais
    func ganhoAnual() -> Double {
        return salario! * 12
    }
    
/// Função que exibe os dados na tela
    func exibeDados() {
        print("Nome: ", nome!)
        print("Salário: ", salario!)
    }
}

  
/// Classe Assistente
class Assistente : Funcionario {
  
    var matricula: Int

    init(matricula: Int, nome: String, salario: Double) {
        self.matricula = matricula
        super.init(nome: nome, salario: salario)
        
    }

    override func exibeDados() {
        print("Matrícula: ", matricula)
        print("Nome: ", nome!)
        print("Salário: ", salario!)
    }
}
  
var assistente11 = Assistente(matricula: 8795, nome: "Jorge", salario: 1500.0)
assistente11.exibeDados()

      
/// classe Tecnico
class Tecnico: Assistente {

    var bonusSalarial: Double

    init(matricula: Int, nome: String, salario: Double, bonusSalarial: Double) {
        self.bonusSalarial = bonusSalarial
        super.init(matricula: matricula, nome: nome, salario: salario)
    }
    override func ganhoAnual() -> Double {
        var ganhoAnual: Double = ((salario! * 2.0) * 12) + bonusSalarial
        return self.ganhoAnual()
    }

}
var tecnico1 = Tecnico(matricula: 8795, nome: "Jorge", salario: 1500.0, bonusSalarial: 1.5)
tecnico1.exibedados()

      
/// Classe Administrativo
class Administrativo: Assistente {

    var turno: String

    init(matricula: Int, nome: String, salario: Double, turno: String) {
        self.turno = turno
        super.init(matricula: matricula, nome: nome, salario: salario)
    }

    override func ganhoAnual() {
            let ganhoAnual: Double = ((salario! + (salario * 2.0)) * 20.0)

        if turno == "Diurno" {
            var ganhoAnual = super.ganhoAnual()
        }
        return ganhoAnual
    }

}


