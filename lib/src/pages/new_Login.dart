import 'package:flutter/material.dart';

import 'new_List.dart';
import 'new_page.dart';

class NewLogin extends StatelessWidget {
  TextEditingController _usuario = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //contenedor color 249,246,239
    //2 inputs text usuario y password y boton de mostrar datos investigacion toas y ocultar texto type password
    //inputs con placeholder y background ()
    //color boton 42,200,194 y mensaje toas (pop.up)
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginRest"),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Ingrese su usuario',
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                  controller: _usuario,
                  maxLength: 20,
                  decoration: InputDecoration(
                    icon: const Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Icon(Icons.account_circle),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Usuario',
                  )),
            ),
            Text(
              'Ingrese su password',
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: _password,
                maxLength: 20,
                obscureText: true,
                decoration: InputDecoration(
                    icon: const Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: const Icon(Icons.lock),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Password'),
              ),
            ),
            new Row(
              children: [
                Expanded(
                  child: new RaisedButton(
                      color: Colors.red,
                      child: Text("Regresar"),
                      onPressed: () {
                        Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => NewPage(),
                        ));
                      }),
                ),
                Expanded(
                  child: new RaisedButton(
                    color: Color.fromRGBO(42, 200, 194, 1),
                    child: Text(
                      "Verificar",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    onPressed: () {
                      return showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Valores de Usuario"),
                              content: Text("Usuario: " +
                                  _usuario.text +
                                  "\nPassword: " +
                                  _password.text),
                              actions: <Widget>[
                                new FlatButton(
                                  child: new Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          });
                    },
                  ),
                ),
                Expanded(
                  child: new RaisedButton(
                      color: Colors.red,
                      child: Text("Acceder"),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => NewList()),
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(249, 246, 239, 1.0),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
