import 'package:cloud_firestore/cloud_firestore.dart';

class Property {
  final String title;
  final String image;
  final String location;
  final int price;
  final int beds;
  final int bathrooms;

  Property({
    required this.title,
    required this.image,
    required this.location,
    required this.price,
    required this.beds,
    required this.bathrooms,
  });

  factory Property.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map<String, dynamic>;
    return Property(
      title: data['title'] ?? '',
      image: data['image'] ?? '',
      location: data['location'] ?? '',
      price: data['price'] ?? 0,
      beds: data['beds'] ?? 0,
      bathrooms: data['bathrooms'] ?? 0,
    );
  }
}
