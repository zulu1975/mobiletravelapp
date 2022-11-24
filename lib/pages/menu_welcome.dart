import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiletravelapp/pages/login_page.dart';
import 'package:mobiletravelapp/touristSites/mutata.dart';
import 'package:mobiletravelapp/touristSites/apartado.dart';
import 'package:mobiletravelapp/touristSites/chigorodo.dart';
import 'package:mobiletravelapp/touristSites/turbo.dart';
import 'package:mobiletravelapp/touristSites/arboletes.dart';

class MenuWelcome extends StatelessWidget {
  const MenuWelcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent
            ),
            child: Image(image: AssetImage('assets/images/turismo.png')),
          ),
          Column(
            children: [
              ListTile(
                leading: const Icon(Icons.church_outlined, size: 20, color: Colors.lightBlue,),
                title: const Text("Conozca Turbo, La Capital Portuaria de Uraba", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Turbo()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.church_outlined, size: 20, color: Colors.lightBlue,),
                title: const Text("Conozca Chigorodó y su fiesta Ganadera", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Arboletes()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.church_outlined, size: 20, color: Colors.lightBlue,),
                title: const Text("Conozca Apartadó y su feria del Banano", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const apartado()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.church_outlined, size: 20, color: Colors.lightBlue,),
                title: const Text("Conozca MUTATA, y sus espectaculares Rios", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Mutata()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.church_outlined, size: 20, color: Colors.lightBlue,),
                title: const Text("Conozca Arboletes y su majestuoso Volcan", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Chigorodo()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app, size: 20, color: Colors.lightBlue,),
                title: const Text("Salir", style: TextStyle(fontSize: 20),),
                textColor: Colors.green,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}