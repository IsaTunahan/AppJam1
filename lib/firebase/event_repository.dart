import 'package:app_jam/firebase/event_modal.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class EventRepository extends GetxController {
  static EventRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  create(EventModel event) async {}

//Future<EventModel>getEventModel(String )
}
