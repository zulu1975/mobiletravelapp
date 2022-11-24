import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiletravelapp/pages/menu_site.dart';

class Arboletes extends StatefulWidget {
  const Arboletes({Key? key}) : super(key: key);

  @override
  State<Arboletes> createState() => _ArboletesState();
}

class _ArboletesState extends State<Arboletes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CHIGORODO",textAlign:TextAlign.center,style: TextStyle(
          color: Colors.white,
          fontSize: 16,

        )),
      ),
      drawer: const MenuSite(),

      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("TouristSites").where('idTs', isEqualTo: "Chgdo")
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
                  const Text("CHIGORODO CAPITAL GANADERA",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/d/d6/Chigorod%C3%B3.jpg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("FERIA GANADERA",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://revistaurabapremium.com/wp-content/uploads/WhatsApp-Image-2019-03-28-at-2.48.07-PM-1024x576.jpeg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("VISTA PARQUE PRINCIPAL",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://www.elcolombiano.com/documents/10157/0/849x562/0c0/0d0/none/11101/CPHJ/image_content_23191193_20150414165320.jpg"),

                ],
              );
            },
          )),
    );
  }
}