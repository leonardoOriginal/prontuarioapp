import 'package:flutter/material.dart';
import 'package:vida_leve/utils/appbar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: '',
        icon: Icons.settings,
        onIconPressed: () {
        },
      ),
      body: Center(
        child: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(height: 32.0), // Espaço entre o título e os cards
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Text (
                          'Agenda',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color.fromRGBO(0, 168, 150, 100)
                          ),
                          child: IconButton(
                            icon: Icon(Icons.add),
                            color: Colors.white,
                            onPressed: () {
                              // Função a ser executada quando o ícone for clicado
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32.0), // Espaço entre os cards e a margem inferior
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                      child: SizedBox(
                        height: 150.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 105.0, // diminui a largura do card
                              margin: const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: index % 2 == 0 ? Colors.red : Colors.blue,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Título do Card ${index + 1}',
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      'Descrição do Card ${index + 1}',
                                      style: const TextStyle(
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Pacientes',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  const SizedBox(height: 60.0),
                  ElevatedButton(
                    onPressed: () {
                      // Função a ser executada quando o botão for clicado
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                      textStyle: const TextStyle(fontSize: 20.0),
                    ),
                    child: const Text(
                      'Pacientes',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        )
      )
    );
  }
}














//appBar: AppBar(
        //backgroundColor: const Color.fromRGBO(0, 168, 150, 100),
        //title: const Text('Home Page'),
        //leading: const CircleAvatar(
          //radius: 10000,
          //backgroundColor: Color.fromRGBO(0, 168, 150, 0),
          //backgroundImage: AssetImage('images/logo_vidaleve.png'),
        //),
      //),