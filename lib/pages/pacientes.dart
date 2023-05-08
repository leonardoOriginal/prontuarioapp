import 'package:flutter/material.dart';
import 'package:vida_leve/utils/appbar.dart';

class Pacientes extends StatefulWidget {
  @override
  _PacientesState createState() => _PacientesState();
}


class _PacientesState extends State<Pacientes> {
  List<Map<String, dynamic>> dados = [
    {'nome': 'Fulano', 'descricao': 'Descrição do Fulano', 'imagem': ' '},
    {'nome': 'Ciclano', 'descricao': 'Descrição do Ciclano', 'imagem': ' '},
    {'nome': 'Beltrano', 'descricao': 'Descrição do Beltrano', 'imagem': ' '},
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: '',
        icon: Icons.settings,
        onIconPressed: () {
        },
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    'Pacientes:',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(0, 168, 150, 100)
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.add),
                      iconSize: 30,
                      color: Colors.white,
                      onPressed: () {
                        // Função a ser executada quando o ícone for clicado
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Pesquisar...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dados.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 64,
                        height: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(dados[index]['imagem']),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dados[index]['nome'],
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Text(
                            dados[index]['descricao'],
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}