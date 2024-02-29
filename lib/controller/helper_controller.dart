import 'package:get/get.dart';

class HelperController extends GetxController {
  List<Map<String, dynamic>> image = [
    {"image": "images/rammandir.jpg", "name": "Rammandir, Ayodhya"},
    {"image": "images/premmandir.jpg", "name": "Premmandir, Vrindavan"},
    {"image": "images/Chitrakoot.jpg", "name": "Premmandir, Vrindavan"},
    {"image": "images/Hampi_1.jpg", "name": "Premmandir, Vrindavan"},
    {"image": "images/Haridwar_1.jpg", "name": "Premmandir, Vrindavan"},
    {"image": "images/Puri_1.jpg", "name": "Premmandir, Vrindavan"},
    {"image": "images/Rameshwaram.jpg", "name": "Premmandir, Vrindavan"},
  ];

  List<Map<String, dynamic>> topPicks = [
    {"image": "images/Chitrakoot.jpg", "name": "Chitrakoot, Uttar Pradesh"},
    {"image": "images/Hampi_1.jpg", "name": "Hampi, Karnataka"},
    {"image": "images/Haridwar_1.jpg", "name": "Haridwar, Uttarakhand"},
    {"image": "images/Puri_1.jpg", "name": "Puri, Odisha"},
    {"image": "images/Rameshwaram.jpg", "name": "Rameshwaram, TamilNadu"},
    {"image": "images/Prayagraj.jpg", "name": "Prayagraj, Allahabad"},
  ];

  List<Map<String, dynamic>> categories = [
    {"image": "images/Chitrakoot.jpg", "name": "Education"},
    {"image": "images/Hampi_1.jpg", "name": "E-books"},
    {"image": "images/Haridwar_1.jpg", "name": "Events"},
    {"image": "images/Puri_1.jpg", "name": "Cultures"},
    {"image": "images/Rameshwaram.jpg", "name": "Blogs"},
    {"image": "images/Prayagraj.jpg", "name": "Feedback"},
  ];
}