import 'package:flutter/material.dart';
import 'package:user_preferences/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {

  static const String routeName = "settings";  
  const SettingsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ajustes', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),),
            const Divider(),
            SwitchListTile.adaptive( title: const Text('Darmode'), value: true, onChanged: ( value ){

            }),
            const Divider(),
            RadioListTile<int>(title: const Text('Masculino'),value: 1, groupValue: 1, onChanged: (value){

            }),
            const Divider(),
            RadioListTile<int>(title: const Text('Femenino'), value: 2, groupValue: 1, onChanged: (value){

            }),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20), 
              child: TextFormField(
                initialValue: 'Alex',
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario',
                ),
                  ),
                ),  
          ],
        ),)
    );
  }
}