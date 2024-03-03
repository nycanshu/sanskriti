import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

import 'package:sanskriti/model/feedbackModel.dart';

class FeedBackController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final feedbackController = TextEditingController();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> sendFeedback(String name, String email, String feedback) async {
    FeedbackModel newFeedback = FeedbackModel(
      name: name,
      email: email,
      feedback: feedback,
    );

    try {
      await _firestore
          .collection('feedbacks')
          .add(newFeedback.toFirebaseJson());
    } catch (e) {
      // Handle error, e.g., show an error message
      print('Error 🤔🤔sending feedback: $e');
    }
  }
}
