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
                            // Algo de c??digo para ??deshacer el cambio!
                          },
                        ),
                      );
                      // Encuentra el Scaffold en el ??rbol de widgets y ????salo para mostrar un SnackBar!
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
                            // Algo de c??digo para ??deshacer el cambio!
                          },
                        ),
                      );

                      // Encuentra el Scaffold en el ??rbol de widgets y ????salo para mostrar un SnackBar!
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
                            // Algo de c??digo para ??deshacer el cambio!
                          },
                        ),
                      );

                      // Encuentra el Scaffold en el ??rbol de widgets y ????salo para mostrar un SnackBar!
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
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "El ITESO, Universidad Jesuita de Guadalajara Instituto Tecnol??gico y de Estudios Superiores de Occidente, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, M??xico, fundada en el a??o 1957 A mediados del decenio de los a??os 50, en Guadalajara no exist??a una universidad jesuita. En Guadalajara existe una instituci??n de educaci??n b??sica llamada Instituto de Ciencias, en la cual participan miembros de la Compa????a de Jes??s. (Esta fue la base de la actual instituci??n) Padres de familia de los estudiantes del Instituto de Ciencias reunieron esfuerzos para que esta Casa de Estudios tomara forma. Entre otras implicaciones, algunos jesuitas que formaban parte de la que era la ??nica universidad cat??lica en Guadalajara, decidieron unirse a las filas del ITESO. Este contexto hizo pol??mica la fundaci??n del ITESO, y sirvi?? para se??alar la participaci??n determinante de la Compa????a de Jes??s en el proyecto. Las primeras instalaciones del ITESO se ubicaron frente a la Rotonda de los Hombres Ilustres.",
                textAlign: TextAlign.justify,
              ),
            ),


          ],
        )
    );
  }
}
  
