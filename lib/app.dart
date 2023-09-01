import 'model/pessoa.dart';
import 'servico/calc_imc.dart';
import 'utilitario/utils.dart';

void execute() {
  print('Bem vindo a calculadora de IMC');

  String nome = ConsoleUtils.lerString(mensagem: 'Nome:');
  double peso = ConsoleUtils.lerDouble(mensagem: 'Peso (kg):');
  double altura = ConsoleUtils.lerDouble(mensagem: 'Altura (metros):');
  Pessoa pessoa = Pessoa(nome, peso, altura);

  CalculadoraImc calculadora = CalculadoraImc();
  calculadora.resultado(pessoa);
}