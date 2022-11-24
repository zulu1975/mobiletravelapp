import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiletravelapp/pages/menu_site.dart';

class Mutata extends StatefulWidget {
  const Mutata({Key? key}) : super(key: key);

  @override
  State<Mutata> createState() => _MutataState();
}

class _MutataState extends State<Mutata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MUTATA LA PUERTA DE ENTRADA A URABA",textAlign:TextAlign.center,style: TextStyle(
          color: Colors.white,
          fontSize: 16,

        )),
      ),
      drawer: const MenuSite(),

      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection("TouristSites").where('idTs', isEqualTo: "Mta")
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
                  const Text("RESGUARDO INDIGENA",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/Embera.JPG/800px-Embera.JPG"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("RIO PIEDRAS BLANCAS",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://noticiasuraba.com/wp-content/uploads/2017/05/mutata-uraba-1.jpg"),
                  const Divider(
                    height: 25,
                    thickness: 5,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.tealAccent,
                  ),
                  const Text("RIO MUTATA",textAlign:TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,color: Colors.pink)),
                  Image.network("https://scontent.fbog2-5.fna.fbcdn.net/v/t1.6435-9/68481613_353589148922586_1664584239934341120_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=9267fe&_nc_ohc=rUjy32ZuAJIAX8SOfNH&_nc_ht=scontent.fbog2-5.fna&oh=00_AfCq7vbvr_G5ncaeYKXkBMYy3_7l-OXP0vvAlT2vInHIaw&oe=63A68D56")

                ],
              );
            },
          )),
    );
  }
}