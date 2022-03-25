import UIKit

var greeting = "Hello, playground"

var idade = 33

idade = 32

var nome = "Alexis"

let pi = 3.14

var altura : Double = 1.70
var sobrenome: String = "Comesana"

print("Meu nome é \(nome) \(sobrenome), tenho \(altura) de altura, o número Pi é igual a \(pi)...")
// operadores

var soma : Int = 2 + 4

soma += 10
soma = soma + 10
soma += 1

print(soma)

//para cair no outro if/else if/else, e preciso mudar a idade

if (soma < idade) {
  print("Soma é menor que a altura")
}

else if (soma > idade && soma > 10) {
  print("a soma é maior")
}

else {
    print("Sao iguaiss")
}
