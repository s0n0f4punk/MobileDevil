import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_job/database/firebaseFirestore/profile_collection.dart';
import 'package:flutter_job/database/firebaseStorage/image_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/toast.dart';

import '../../themes/colors.dart';

final colRef = FirebaseFirestore.instance.collection('profiles');

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String userId = FirebaseAuth.instance.currentUser!.uid.toString();
  dynamic userDoc;
  File? selectImage;
  XFile? fileName;
  ImageStorage imageStorage = ImageStorage();
  ProfileCollection profileCollection = ProfileCollection();

  selectImageGallery()async {
    final returnImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      fileName = returnImage;
      selectImage = File(returnImage!.path);
    });
  }
  //метод отправки на облачко//

  void pushStorage ()async{
    await imageStorage.addImageStorage(fileName!);
  } 

  getUserById()async{
    final DocumentSnapshot documentSnapshot = await colRef.doc(userId).get();
    setState(() {
      userDoc = documentSnapshot;
    });
  }
 
  Widget resumeCard(BuildContext context, dynamic docs) {
    return SizedBox(
      child: Card(
        color: lightColor2,
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(docs['position'], style: const TextStyle(color: Colors.white, fontSize: 18),),
              Text(docs['salary'] + ' RUB', style: const TextStyle(color: Colors.white, fontSize: 18),),
            ],
          ),
            subtitle: Column(children: [
              Text(docs['surname'] + ' ' + docs['name'] + ' ' + docs['patronymic'], style: const TextStyle(color: Colors.white),),
              Text('Почта: ${docs['email']}', style: const TextStyle(color: Colors.white),),
              Text('Телефон: ${docs['phone']}', style: const TextStyle(color: Colors.white),),
              const SizedBox( child: 
                Expanded(child: Divider(
                color: Colors.red,
              )),),
              Text("Обо мне: ${docs['description']}", style: const TextStyle(color: Colors.white),),
              const SizedBox( child: 
                Expanded(child: Divider(
                color: Colors.red,
              )),),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(docs['date'], style: const TextStyle(color: Colors.white),),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit, color: Colors.white)
                    )
                  ] 
                )
              ],
            )
        ),
      ),
    );
  }

  @override 
  void initState() {
    getUserById();
    super.initState();
  }

  @override 
  Widget build(BuildContext context) {
    ToastContext().init(context);
    // ignore: avoid_unnecessary_containers
    return Expanded(
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
                child: IconButton(onPressed: () async{
                  selectImageGallery();
                  if (selectImage!=null) {
                    pushStorage();
                    await Future.delayed(const Duration(seconds: 4));
                    await profileCollection.editImageProfile(userDoc, imageStorage.pathImageUrl!);
                    Toast.show("Успешно!");
                    initState();
                  } else {
                    Toast.show("Выберите изображение");
                  }
                }, icon: const Icon(Icons.add),)
              )
              : CircleAvatar(backgroundImage: NetworkImage(userDoc['image']),),
              trailing:
              IconButton(
                icon: const Icon(Icons.arrow_right, color: Colors.white,),onPressed: () {}
                ),
                ),
            ),
            Text('Список резюме', textScaler: TextScaler.linear(MediaQuery.textScalerOf(context).scale(2),), style: const TextStyle(color: Colors.white),),
            StreamBuilder(stream: FirebaseFirestore.instance.collection('profiles').doc(userId).collection('resumes').snapshots(), builder: (context, snapshot){
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: snapshot.data!.docs.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder:(context,index) {
                    return resumeCard(context, snapshot.data!.docs[index]);
                  },
                );
              }
            }) 
              ],
            )     
      );
  }
}