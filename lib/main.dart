import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp>{
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
      home: Scaffold(
        appBar: AppBar(
          title: Text('App ITESO'),
        ),
        */ 
        appBar: AppBar(
          title: Text('App ITESO'),
        ),
        body: Column(
          children: [
            Image.network(
              "https://www.cisco.com/c/m/es_mx/cases/iteso/jcr:content/Grid/category_atl_26d4/layout-category-atl/marquee_inpage_505b.img.jpg/1549279992740.jpg",
            ),
            ListTile(
              title: Text("EL ITESO universidad"),
              subtitle: Text("Tlaquepaque"),
              trailing: Wrap(
                spacing: 12, // space between two icons
                children: <Widget>[
                  IconButton(
                    onPressed:(){
                      setState(() {
                        
                      });
                      counter--;
                      print('$counter');
                    },
                    icon: Icon(Icons.thumb_down),
                  ), // icon-1
                  IconButton(
                    onPressed:(){
                      setState(() {
                        
                      });
                      counter++;
                      print('$counter');
                    },
                    icon: Icon(Icons.thumb_up),
                  ), // icon-1
                  Text('$counter', style: const TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: 
              MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                children: [
                  IconButton(
                    onPressed:(){
                     final snackBar = SnackBar(
                        content: Text('Yay! A SnackBar!'),
                        action: SnackBarAction(
                        label: 'Undo',
                          onPressed: () {
                            // Algo de código para ¡deshacer el cambio!
                          },
                        ),
                      );

                      // Encuentra el Scaffold en el árbol de widgets y ¡úsalo para mostrar un SnackBar!
                      Scaffold.of(context).showSnackBar(snackBar);
                    },
                    icon: Icon(Icons.mail),
                  ),
                   Text("Correo"),
                ],
                ),
                Column(
                children: [
                  IconButton(
                    onPressed:(){
                     
                    },
                    icon: Icon(Icons.phone),
                  ),
                   Text("Llamada"),
                ],
                ),
                Column(
                children: [
                  IconButton(
                    onPressed:(){
                     
                    },
                    icon: Icon(Icons.directions),
                  ),
                   Text("Ruta"),
                ],
                ),
              ],
            )
          ],
        )
    );
  }
}
  
