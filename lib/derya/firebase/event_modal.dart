import 'package:cloud_firestore/cloud_firestore.dart';

class EventModel {
  final String? id;
  final String title;
  final String description;
  final String date;
  final String time;
  final String category;

  const EventModel({
    this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.category,
  });

  toJson() {
    return {
      "Etkinlik Adı": title,
      "Açıklama": description,
      "Tarih": date,
      "Saat": time,
      "Kategori": category
    };
  }

  // kulanicinin gidip geldigi alan
  factory EventModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return EventModel(
      id: document.id,
      title: data["Etkinlik Adı"],
      description: data["Açıklama"],
      date: data["Tarih"],
      time: data["Saat"],
      category: data["Kategori"],
    );
  }
}
