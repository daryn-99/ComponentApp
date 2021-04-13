/*import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp'),
      ),
      body: ListView(
          //children: _crearItems()
          children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Sub titulo'),
            leading: Icon(Icons.attribution_outlined),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
*/
