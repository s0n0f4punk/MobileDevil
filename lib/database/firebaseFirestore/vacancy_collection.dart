import 'package:cloud_firestore/cloud_firestore.dart';

class VacancyCollection{
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<void> addVacancy(String id, String position, String salary, String description, String publicDate, String schedule, String employer, String company)async{
    try {
      await _firebaseFirestore.collection("vacancy").add({
        'vid' : id,
        'position' : position,
        'salary' : salary,
        'description' : description,
        'publicDate' : publicDate,
        'schedule' : schedule,
        'employer' : employer,
        'company' : company
        });
    } catch (e) {
      return;
    }
  }

  Future<void> editVacancy(dynamic docs, String id, String position, String salary, String description, String publicDate, String schedule, String employer, String company)async{
    try {
      await _firebaseFirestore.collection("vacancy").doc(docs.id).update({
        'position' : position,
        'salary' : salary,
        'description' : description,
        'publicDate' : publicDate,
        'schedule' : schedule,
        'employer' : employer,
        'company' : company
        });
    } catch (e) {
      return;
    }
  }

  Future<void> deleteVacancy(
    dynamic docs,
  )async{
    try {
      await _firebaseFirestore.collection("vacancy").doc(docs.id).delete();
    } catch (e) {
      return;
    }
  }
}