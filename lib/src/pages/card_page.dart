import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }
}

Widget _cardTipo1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.album_rounded, color: Colors.yellow),
          title: Text('Off like Reco'),
          subtitle: Text(
              'We went to Punta Gorda with the Super Campeones Team, Bulma and Teresin to hang out, but the Guifity was too much and we stayed OFF LIKE RECO!!!!!!!!!!!!'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {
  final card = Card(
    //clipBehavior: Clip.antiAlias, mantener lal informacion de la tarjeta dentro de los border
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        /*Image(
          image: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
        ),*/
        Container(padding: EdgeInsets.all(10.0), child: Text('Landscape'))
      ],
    ),
  );

  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), color: Colors.red),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: card,
    ),
  );
}
