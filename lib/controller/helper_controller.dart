import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperController extends GetxController {
  //final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> launchURL(String url) async {
    var urllaunchable =
        await canLaunch(url); //canLaunch is from url_launcher package
    if (urllaunchable) {
      await launch(url); //launch is from url_launcher package to launch URL
    } else {
      print("URL can't be launched.");
    }
  }

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
    {"image": "images/education_caticon.png", "name": "Education"},
    {"image": "images/ebook_caticon.png", "name": "E-books"},
    {"image": "images/event_caticon.png", "name": "Events"},
    {"image": "images/culture_caticon.png", "name": "Cultures"},
    {"image": "images/blogs_caticon.png", "name": "Blogs"},
    {"image": "images/feedback_caticon.png", "name": "Feedback"},
  ];
  List<Map<String, dynamic>> educationBooks = [
    {
      "image": "images/ayurveda.jpg",
      "name": "Ayurveda",
      "link":
          "https://www.chandigarhayurvedcentre.com/wp-content/themes/organix/E-books/astanga-hridaya-sutrasthan-handbook.pdf"
    },
    {
      "image": "images/ramayan.jpg",
      "name": "Ramayan",
      "link": "https://www.gutenberg.org/files/24869/24869-pdf.pdf"
    },
    {
      "image": "images/bhagwat_gita.png",
      "name": "Bhagwat Gita",
      "link": "https://bhagavadgita.io/chapter/1"
    },
    {
      "image": "images/mahabharat.png",
      "name": "Mahabharat",
      "link": "https://www.gutenberg.org/cache/epub/7864/pg7864-images.html"
    },
  ];
  List<Map<String, dynamic>> eBooks = [
    {
      "image": "images/asura.jpg",
      "name": "Asura",
      "link":
          "https://books.google.co.in/books?id=aSeCA-2sGO4C&printsec=frontcover#v=onepage&q&f=false"
    },
    {
      "image": "images/ayurveda.jpg",
      "name": "Ayurveda",
      "link":
          "https://www.chandigarhayurvedcentre.com/wp-content/themes/organix/E-books/astanga-hridaya-sutrasthan-handbook.pdf"
    },
    {
      "image": "images/lankasPrincess.jpg",
      "name": "Lanka's Princess",
      "link":
          "https://www.researchgate.net/publication/357311317_Lanka's_Princess"
    },
    {
      "image": "images/Shiva-trilogy.png",
      "name": "Shiva Trilogy",
      "link":
          "https://archive.org/details/shivatrilogybyamish/Shiva%20trilogy%20book01%20the%20immortals%20Of%20meluha/page/n5/mode/2up"
    },
    {
      "image": "images/The_Palace_of_Illusions.jpg",
      "name": "The Palace of Illusions",
      "link":
          "https://archive.org/details/the-palace-of-illusions-com-v4-0/page/n7/mode/2up"
    },
  ];

  List<Map<String, dynamic>> ongoingEvent = [
    {
      "image": "images/ongoin1.jpg",
      "name": "6th Global Film",
      "location": "Mumbai",
      "date": "02/03/2024",
      "link":
          "https://books.google.co.in/books?id=aSeCA-2sGO4C&printsec=frontcover#v=onepage&q&f=false"
    },
    {
      "image": "images/ongoing3.jpg",
      "name": "Rajim Kumbh Mela",
      "location": "Chhattisgarh",
      "date": "02/03/2024",
      "link":
          "https://books.google.co.in/books?id=aSeCA-2sGO4C&printsec=frontcover#v=onepage&q&f=false"
    },
  ];
  List<Map<String, dynamic>> upcomingEvent = [
    {
      "image": "images/ongoing2.jpg",
      "name": "National Yoga Day",
      "location": "Karnataka",
      "date": "21/06/2024",
      "link":
          "https://books.google.co.in/books?id=aSeCA-2sGO4C&printsec=frontcover#v=onepage&q&f=false"
    },
    {
      "image": "images/veltech_event.jpg",
      "name": "Cultural Event",
      "location": "Veltech, Chennai",
      "date": "18/03/2024",
      "link":
          "https://books.google.co.in/books?id=aSeCA-2sGO4C&printsec=frontcover#v=onepage&q&f=false"
    },
    {
      "image": "images/world_hindu_economy_forem.jpg",
      "name": "WHEF 2024",
      "location": "Mumbai",
      "date": "13/12/2024",
      "link":
          "https://books.google.co.in/books?id=aSeCA-2sGO4C&printsec=frontcover#v=onepage&q&f=false"
    },
  ];

  List<Map<String, dynamic>> cultureData = [
    {"image": "images/culture_dance.jpg", "heading": "Dance", "subheding": ""},
    {
      "image": "images/culture_music.jpg",
      "heading": "Ayurveda",
      "subheding": ""
    },
    {
      "image": "images/culture_ritals.jpg",
      "heading": "Ayurveda",
      "subheding": ""
    },
    {
      "image": "images/culture_tradition.jpg",
      "heading": "Ayurveda",
      "subheding": ""
    },
  ];
}
