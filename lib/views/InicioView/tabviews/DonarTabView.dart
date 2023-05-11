import 'package:centro_cristiano_gye/components/cards/CustomCard.dart';
import 'package:flutter/material.dart';

class DonarTabView extends StatelessWidget {
  const DonarTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Agradecemos tu generosidad!", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Text("Selecciona primero el monto sw tu ofrenda o diezmo, en la siguiente sección."),
            SizedBox.square(dimension: 30,),
            
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.attach_money,
                  color: Colors.grey[700],
                  textDirection: TextDirection.ltr,
                  semanticLabel: 'Precio en pesos',
                ),
                // En lugar de child, usamos labelText para agregar el texto
                labelText: 'USD',
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox.square(dimension: 10,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildMontoButton(15),
                _buildMontoButton(20),
                _buildMontoButton(30),
                _buildMontoButton(50),
              ],
            ),


            SizedBox.square(dimension: 10,),
            Text("Donativos para el Campus:"),
            SizedBox.square(dimension: 10,),
            
            
            DropdownMenu(

              dropdownMenuEntries: [
                DropdownMenuEntry(
                  label: "Campus Principal",
                  value: "Campus Principal",
                ),
                DropdownMenuEntry(
                  label: "Campus Ciudadela de Dios",
                  value: "Campus Ciudadela de Dios",
                ),
                DropdownMenuEntry(
                  label: "Campus Monte Sinaí",
                  value: "Campus Monte Sinaí",
                ),
                DropdownMenuEntry(
                  label: "Campus Durán",
                  value: "Campus Durán",
                ),
              ],
            ),

            SizedBox.square(dimension: 10,),
            Text("Motivo de la donación:"),
            SizedBox.square(dimension: 10,),

            DropdownMenu(

              dropdownMenuEntries: [
                DropdownMenuEntry(
                  label: "Diezmo",
                  value: "Diezmo",
                ),
                DropdownMenuEntry(
                  label: "Ofrenda",
                  value: "Ofrenda",
                ),
                DropdownMenuEntry(
                  label: "Donativo",
                  value: "Donativo",
                ),
              ],
            ),

            SizedBox.square(dimension: 10,),

            Text("Donar cada:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActionChip(
                  label: Text("Semana"),
                  onPressed: () {},
                ),
                ActionChip(
                  label: Text("Quincena"),
                  onPressed: () {},
                ),
                ActionChip(
                  label: Text("Mes"),
                  onPressed: () {},
                ),
                ActionChip(
                  label: Text("Año"),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox.square(dimension: 10,),
            Center(
              child: FilledButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                icon: Icon(Icons.arrow_forward),
                label: Text("Continuar"),
                onPressed: () {
                  Navigator.pushNamed(context, '/donar');
                },
              ),
            )

          ]
        ),
      ),
    );
  }
  
  _buildMontoButton(int i) {
    return FilledButton(
      onPressed: () {
        print("Monto $i");
      },
      child: Text("\$$i"),
    );
  }
}
