import 'package:flutter/material.dart';

class DonarPage extends StatelessWidget {
  static const routeName = '/donar';
  const DonarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0, // Elimina la elevación
        backgroundColor: Colors.transparent,
      ),
      body: CustomScrollView(
        slivers: [
          
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Text("Ingresa los datos personales de tu tarjeta de crédito o débito"),
                  SizedBox.square(dimension: 30,),

                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: getInputDecoration("Nombre", Icons.perm_identity),
                  ),
                  SizedBox(height: 10,),

                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: getInputDecoration("Apellido", Icons.perm_identity),
                  ),
                  SizedBox(height: 10,),

                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: getInputDecoration('Correo electrónico', Icons.email),
                  ),


                  SizedBox(height: 10,),
                  SizedBox.square(dimension: 30,),


                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: getInputDecoration("Número de tarjeta", Icons.credit_card),
                  ),
                  SizedBox.square(dimension: 10,),

                  Row(
                    children: [
                      Flexible(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: getInputDecoration("MM/AA", Icons.calendar_today)
                        ),
                      ),

                      SizedBox.square(dimension: 10,),

                      Flexible(
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: getInputDecoration("CVV", Icons.lock)
                        ),
                      ),
                    ],
                  ),
                  SizedBox.square(dimension: 10,),


                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: getInputDecoration("Titular de la tarjeta", Icons.person),
                  ),
                  SizedBox.square(dimension: 10,),
                  Center(
                    child: FilledButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      ),
                      icon: Icon(Icons.favorite),
                      label: Text("Donar"),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => BottomSheet(
                            enableDrag: false,
                            onClosing: () {},
                            builder: (context) => Container(
                              width: double.infinity,
                              height: 600,
                              child: Padding(
                                padding: const EdgeInsets.all(40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Resumen de la donación", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                    Flexible(
                                      child: Padding(
                                        padding: const EdgeInsets.all(40),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Importe del pago:"),
                                                Text("\$100.00"),
                                              ],
                                            ),
                                            SizedBox.square(dimension: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Frecuencia de donacion:"),
                                                Text("Una vez"),
                                              ],
                                            ),
                                            Divider(),
                                            SizedBox.square(dimension: 10,),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Total a donar:", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                                Text("\$100.00", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ),
                                    // aceptar terminos y condiciones
                                    CheckboxListTile(
                                      title: Text("Acepto los términos y condiciones"),
                                      value: false,
                                      onChanged: (value) {},
                                    ),
                                    Center(
                                      child: FilledButton.icon(
                                        style: ButtonStyle(
                                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                        ),
                                        icon: Icon(Icons.favorite),
                                        label: Text("Donar"),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ),
                            ),
                          )
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration getInputDecoration(String label, IconData icon) {
    return InputDecoration(
      prefixIcon: Icon(
        icon,
        color: Colors.grey[700],
        textDirection: TextDirection.ltr,
        semanticLabel: label,
      ),
      // En lugar de child, usamos labelText para agregar el texto
      labelText: label,
      border: OutlineInputBorder(),
    );
  }
}