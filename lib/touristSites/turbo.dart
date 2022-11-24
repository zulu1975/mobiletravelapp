import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiletravelapp/pages/menu_site.dart';

class Turbo extends StatefulWidget {
  const Turbo({Key? key}) : super(key: key);

  @override
  State<Turbo> createState() => _TurboState();
}

class _TurboState extends State<Turbo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("TURBO, LA CAPITAL PORTUARIA DE URABA",textAlign:TextAlign.center,style: TextStyle(
          color: Colors.white,
          fontSize: 16,

        )),
      ),
      drawer: const MenuSite(),

      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("TouristSites").where('idTs', isEqualTo: "Tbo")
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Loading');
              QueryDocumentSnapshot site = snapshot.data!.docs[0];
              return ListView(
                children: [

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("DESCRIPCION:",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Text(site['description'],textAlign:TextAlign.justify,),

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("UBICACION GEOGRAFICA:",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Text(site['location'],textAlign:TextAlign.justify,),

                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("CAPITAL PORTUARIA ",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://www.invias.gov.co/images/Photos/2020/junio/020620_malecon_turbo_01.jpg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("EL MALECON",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://www.invias.gov.co/images/Photos/2020/junio/020620_malecon_turbo_02.jpg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("FUTURO PUERTO DE TURBO",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://i.ytimg.com/vi/3Sz_1cYVLjw/maxresdefault.jpg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),

                ],
              );
            },
          )),
    );
  }
}