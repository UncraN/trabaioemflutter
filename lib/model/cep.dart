import 'dart:convert';

class Cep {
  final String cep;
  final String logradouro;
  final String bairro;
  final String localidade;
  final String uf;
  Cep({
    required this.cep,
    required this.logradouro,
    required this.bairro,
    required this.localidade,
    required this.uf,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
    };
  }

  factory Cep.fromMap(Map<String, dynamic> map) {
    return Cep(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      bairro: map['bairro'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cep.fromJson(String source) => Cep.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cep(cep: $cep, logradouro: $logradouro, bairro: $bairro, localidade: $localidade, uf: $uf)';
  }
}