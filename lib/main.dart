import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final n1 = TextEditingController();
  final n2 = TextEditingController();
  double suma = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Aplicacion Flutter"),
            foregroundColor:
            const Color(0xFFF5F5F5), //Colors.redAccent,
            backgroundColor:
            const Color(0xFF861704), //Colors.amber),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  const Center(
                    child: Text(
                      'Suma de Dos Numeros',
                      style: TextStyle(fontSize: 18),
                     // style: TextStyle(fontSize: 80, color: Colors.blue),
                      textScaleFactor: 1,
                     // textDirection: TextDirection.ltr,
                    ),
                  ),
                  TextFormField(
                    controller: n1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Digite Numero 1",
                      labelText: "Numero 1",
                      fillColor: Colors.green,
                       hintStyle: const TextStyle(color: Colors.red),// colo del hint
                      suffix: IconButton(
                          onPressed: () {
                            n1.clear();
                          },
                          icon: const Icon(Icons.close)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      //[focusedBorder], displayed when [TextField, InputDecorator.isFocused] is true
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: n2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Digite Numero 2",
                      labelText: "Numero 2",
                      fillColor: Colors.green,
                      hintStyle: const TextStyle(color: Colors.red),// colo del hint
                      suffix: IconButton(
                          onPressed: () {
                            n1.clear();
                          },
                          icon: const Icon(Icons.close)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      //[focusedBorder], displayed when [TextField, InputDecorator.isFocused] is true
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.redAccent),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top:20),
                    child:
                    ElevatedButton.icon(
                      icon: const Icon(
                        Icons.add_business_outlined,
                        size: 18,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        print("Button pressed");
                        suma = double.parse(n1.text) + double.parse(n2.text);
                        String resultado = "";
                        resultado = "Resultado $suma";
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Suma"),
                                content: Text(resultado),
                              );
                            });
                      },
                      style: TextButton.styleFrom(
                        //padding: const EdgeInsets.all(100),
                          padding: const EdgeInsets.fromLTRB(60, 10, 60, 10),
                          //padding: const EdgeInsets.only(top:20, left:20, right:20),
                          foregroundColor:
                          const Color(0xFFF5F5F5), //Colors.redAccent,
                          backgroundColor:
                          const Color(0xFF861704)), //Colors.amber),
                      label: Text("CALCULAR"),
                    )
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
