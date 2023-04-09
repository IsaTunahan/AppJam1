import 'package:app_jam/derya/firebase/event_modal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';


class EventRepository extends GetxController {
  static EventRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  create(EventModel event) async {}

//Future<EventModel>getEventModel(String )
}
