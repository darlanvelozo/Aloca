class Aluguel {
  String nome;
  String numero;
  String dataInicio;
  String dataFim;

  Aluguel(
    this.nome,
    this.numero,
    this.dataInicio,
    this.dataFim,
  );
}

class Bota extends Aluguel {
  Bota(
      String nome,
      String numero,
      String dataInicio,
      String dataFim,
      String modeloBota,
      String tamanhoBota,
      double diariaBota,
      String descricaoBota)
      : super(nome, numero, dataInicio, dataFim);
}

class Muleta extends Aluguel {
  Muleta(
      String nome,
      String numero,
      String dataInicio,
      String dataFim,
      String modeloMuleta,
      String tamanhoMuleta,
      double diariaMuleta,
      String descricaoMuleta)
      : super(nome, numero, dataInicio, dataFim);
}
