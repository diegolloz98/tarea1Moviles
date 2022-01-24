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
  int f = 0;
  Color iconColorM = Colors.blue;
  Color iconColorLl = Colors.blue;
  Color iconColorR = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    icon: Icon(Icons.thumb_up),
                    onPressed:(){
                      setState(() {
                        
                      });
                      counter++;
                      print('$counter');
                    },
                    
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
                        content: Text('Enviar Correo'),
                        action: SnackBarAction(
                        label: 'Undo',
                          onPressed: () {
                            // Algo de código para ¡deshacer el cambio!
                          },
                        ),
                      );
                      // Encuentra el Scaffold en el árbol de widgets y ¡úsalo para mostrar un SnackBar!
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      setState(() {
                        
                      });
                      if(f==1){
                        iconColorM = Colors.blue;
                        f--;
                      }else{
                        iconColorM = Colors.black;
                        f++;
                      }
                      print('$counter');
                    },
                    icon: Icon(Icons.mail, color: iconColorM),
                  ),
                   Text("Correo"),
                ],
                ),
                Column(
                children: [
                  IconButton(
                    onPressed:(){
                      final snackBar = SnackBar(
                        content: Text('Hacer llamada'),
                        action: SnackBarAction(
                        label: 'Undo',
                          onPressed: () {
                            // Algo de código para ¡deshacer el cambio!
                          },
                        ),
                      );

                      // Encuentra el Scaffold en el árbol de widgets y ¡úsalo para mostrar un SnackBar!
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      setState(() {
                        
                      });
                      if(f==1){
                        iconColorLl = Colors.blue;
                        f--;
                      }else{
                        iconColorLl = Colors.black;
                        f++;
                      }
                      print('$counter');
                    },
                    icon: Icon(Icons.phone, color: iconColorLl),
                  ),
                   Text("Llamada"),
                ],
                ),
                Column(
                children: [
                  IconButton(
                    onPressed:(){
                      final snackBar = SnackBar(
                        content: Text('ir al ITESO'),
                        action: SnackBarAction(
                        label: 'Undo',
                          onPressed: () {
                            // Algo de código para ¡deshacer el cambio!
                          },
                        ),
                      );

                      // Encuentra el Scaffold en el árbol de widgets y ¡úsalo para mostrar un SnackBar!
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      setState(() {
                        
                      });
                      if(f==1){
                        iconColorR = Colors.blue;
                        f--;
                      }else{
                        iconColorR = Colors.black;
                        f++;
                      }
                      print('$counter');
                    },
                    icon: Icon(Icons.directions, color: iconColorR),
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
  
