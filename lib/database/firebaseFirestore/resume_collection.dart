import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';

class ResumeCollection{
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  final String user = FirebaseAuth.instance.currentUser!.uid.toString();

  Future addResumeProfile(String position, String salary, String description, dynamic docs ) async {
    try {
      final DateTime now = DateTime.now();
      final DateFormat dateFormat = DateFormat('dd-MM-yyyy');
      final String formated = dateFormat.format(now);
      await _firebaseFirestore.collection('profiles').doc(user).collection('resumes').add({
        'uid' : user,
        'position' :  position,
        'salary' : salary,
        'description' : description,
        'date' : formated,
        'surname' : docs['surname'],
        'name' : docs['name'],
        'patronymic' : docs['patronymic'],
        'phone' : docs['phone'],
        'email' : docs['email'],

      });
    } catch (e) {
      return;
    }
  } 
}