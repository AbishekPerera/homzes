import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:homzes/models/property.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Property>> getProperties() {
    return _db
        .collection('properties')
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => Property.fromFirestore(doc)).toList(),
        );
  }
}
