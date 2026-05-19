import 'package:dart_application_1/model/cep.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main () async {
  print('consultando API ViaCep');
  final endereco = await buscarCep('85960055');
  print (endereco.localidade);
}
Future<Cep> buscarCep(String cep) async {
  final response = await http.get(Uri.parse('https://viacep.com.br/ws/$cep/json/'));
if (response.statusCode == 200) {
  final data = jsonDecode(response.body) as Map<String, dynamic>;
  if (data['erro'] == true) {
    throw Exception('CEP não encontrado');
  } 
  return Cep.fromMap(data);
} else {
    throw Exception('Falha ao buscar CEP');
  }
}











