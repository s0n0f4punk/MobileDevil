import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final colRef = FirebaseFirestore.instance.collection('profiles');

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userId = FirebaseAuth.instance.currentUser!.uid.toString();
  dynamic userDoc;

  getUserById()async{
    final DocumentSnapshot documentSnapshot = await colRef.doc(userId).get();
    setState(() {
      userDoc = documentSnapshot;
    });
  }
 
  @override 
  void initState() {
    getUserById();
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        children: [
          Card(
            child: ListTile(
              title: Container(
                alignment: Alignment.topLeft,
                child: Column(
                children: [
                  Text(userDoc['surname'], style: const TextStyle(color: Colors.white),),
                  Text(userDoc['name'], style: const TextStyle(color: Colors.white),),
                  Text(userDoc['patronymic'], style: const TextStyle(color: Colors.white),),
                ],
              ),
              ),
              subtitle: Text(userDoc['phone'], style: const TextStyle(color: Colors.white),),
              //переправить на Image.network
              leading: userDoc['image'] == ''?CircleAvatar(
                child: IconButton(onPressed: () {}, icon: const Icon(Icons.add),)
              )
              : CircleAvatar(backgroundImage: NetworkImage(userDoc['image']),),
              trailing:
              IconButton(
                icon: const Icon(Icons.arrow_right, color: Colors.white,),onPressed: () {}
                ),
                ),
            ),
            const Text('Список резюме'),
            ListView(
              shrinkWrap: true,
              children: const [ListTile(
                tileColor: Colors.white,
                subtitle: Text('Описание'),
                title: Text('Программист'),
              )],
            )
        ]              
      ),
    );
  }
}