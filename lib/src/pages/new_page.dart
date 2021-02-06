import 'package:flutter/material.dart';
import 'package:flutter_application_login/src/pages/new_Login.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina 1"),
      ),
      body: Center(
        child: Container(
          width: 320,
          height: 320,
          color: Color.fromARGB(150, 150, 150, 1),
          child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9D5oo7Ay9Wq-qNH0IzBTeuWvjDg-2EoyjXw&usqp=CAU"),
        ),
      ),
      floatingActionButton: RaisedButton(
          color: Colors.red,
          child: Text("Siguiente"),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => NewLogin(),
            ));
          }),
    );
  }
}
