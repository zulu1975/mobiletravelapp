import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiletravelapp/pages/menu_site.dart';

class apartado extends StatefulWidget {
  const apartado({Key? key}) : super(key: key);

  @override
  State<apartado> createState() => _apartadoState();
}

class _apartadoState extends State<apartado> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("APARTADÓ, RIO DE PLATANOS",textAlign:TextAlign.center,style: TextStyle(
          color: Colors.white,
          fontSize: 16,

        )),
      ),
      drawer: const MenuSite(),

      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("TouristSites").where('idTs', isEqualTo: "Aptdo")
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
                  const Text("APARTADO",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_790/https://alkilautos.com/blog/wp-content/uploads/2019/12/APARTADO1.jpg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("ZONA BANANERA",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://www.elmundo.com/assets/uploads/files/rural-Uraba-web.jpg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("FOTO CENTRAL DEL PARQUE",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://www.elmundo.com/assets/uploads/files/424fb-caravana-por-la-vida-apartado-web.jpg")

                ],
              );
            },
          )),
    );
  }
}