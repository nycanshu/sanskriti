import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HelperController extends GetxController {
  //final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url.toString());
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can't launch $url";
    }
  }

  List<Map<String, dynamic>> image = [
    {
      "image": "images/rammandir.jpg",
      "name": "Rammandir, Ayodhya",
      "link": "https://srjbtkshetra.org/"
    },
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
          "https://utsav.gov.in/view-event/6th-global-film-tourism-conclave-3"
    },
    {
      "image": "images/ongoing3.jpg",
      "name": "Rajim Kumbh Mela",
      "location": "Chhattisgarh",
      "date": "02/03/2024",
      "link": "https://www.globalhighlights.com/india/fesitival-kumbh-mela"
    },
  ];
  List<Map<String, dynamic>> upcomingEvent = [
    {
      "image": "images/ongoing2.jpg",
      "name": "National Yoga Day",
      "location": "Karnataka",
      "date": "21/06/2024",
      "link": "https://www.mygov.in/campaigns/international-yoga-day/"
    },
    {
      "image": "images/veltech_event.jpg",
      "name": "Cultural Event",
      "location": "Veltech, Chennai",
      "date": "18/03/2024",
      "link":
          "https://www.veltech.edu.in/events/vinayagar-chaturthi-celebrations/"
    },
    {
      "image": "images/world_hindu_economy_forem.jpg",
      "name": "WHEF 2024",
      "location": "Mumbai",
      "date": "13/12/2024",
      "link": "https://www.wheforum.org/"
    },
  ];

  List<Map<String, dynamic>> cultureData = [
    {
      "image": "images/culture_dance.jpg",
      "heading": "Dance",
      "subheding":
          "Various Emotions is A Journey Through the Vibrant World of Cultural Dance Traditions."
    },
    {
      "image": "images/culture_music.jpg",
      "heading": "Music",
      "subheding":
          "Promoting Traditions is Knowing the Tonal Variety of Indian Music."
    },
    {
      "image": "images/culture_ritals.jpg",
      "heading": "Rituals",
      "subheding":
          "Religious and Symbolic Practices Across Cultures are Being Revealed through Rituals and Traditions."
    },
    {
      "image": "images/culture_tradition.jpg",
      "heading": "Tradition",
      "subheding":
          "Clothes of Tradition is Saluting the Vibrant Variety of Traditional Clothes."
    },
  ];

  List<Map<String, dynamic>> blogData = [
    {
      "title":
          "Exploring the Depths of Indian Mythology: A Journey Through Time and Belief",
      "subtitle":
          "In the vast tapestry of human history, few narratives rival the richness and complexity of Indian mythology. Spanning millennia, Indian mythology weaves together a myriad of gods, goddesses, demons, heroes, and celestial beings into a vibrant tapestry that reflects the cultural, spiritual, and philosophical ethos of the Indian subcontinent.",
    },
    {
      "title": "The Origins:",
      "subtitle":
          "Indian mythology finds its roots in the ancient scriptures known as the Vedas, which were composed between 1500 BCE and 500 BCE. These texts, revered as the foundational scriptures of Hinduism, contain hymns, rituals, and philosophical insights that form the bedrock of Indian religious thought.",
    },
    {
      "title": "Pantheon of Deities:",
      "subtitle":
          "Central to Indian mythology is its pantheon of gods and goddesses, each with their own unique attributes, stories, and symbolism. At the forefront stands the Trimurti - the trinity of Brahma, the creator; Vishnu, the preserver; and Shiva, the destroyer...",
    },
    {
      "title": "Epics and Legends:",
      "subtitle":
          "Indian mythology is replete with epic narratives and legendary tales that captivate the imagination. Chief among these are the two great epics, the Mahabharata and the Ramayana...",
    },
    {
      "title": "Symbolism and Allegory:",
      "subtitle":
          "Beyond their literal interpretations, the stories of Indian mythology are imbued with profound symbolism and allegory...",
    },
    {
      "title": "Living Tradition:",
      "subtitle":
          "Despite its ancient origins, Indian mythology remains a vibrant and living tradition, deeply ingrained in the cultural fabric of the subcontinent...",
    }
  ];

  List<Map<String, dynamic>> exploreData = [
    {
      "image": "images/arvr_tajmahal.jpg",
      "heading": "Taj Mahal",
      "subheding":
          "Eternal love immortalized in marble, myth of Shah Jahan's devotion."
    },
    {
      "image": "images/arvr_puri.jpg",
      "heading": "Puri Temple",
      "subheding":
          "Lord Jagannath's sacred residence, with its mystical architecture inspiring godly mythology."
    },
    {
      "image": "images/arvr_meenakshi.jpg",
      "heading": "MeenaKshi Temple",
      "subheding":
          "Meenakshi Temple in Madurai is a mythical architectural tribute to the gods."
    },
    {
      "image": "images/arvr_khujraho.jpg",
      "heading": "Khujraho Temple",
      "subheding":
          "Khajuraho Temples are furnished with paintings depicting gods and goddesses."
    },
    {
      "image": "images/arvr_BirlaMandir.jpg",
      "heading": "Birla Mandir",
      "subheding":
          "Hindu gods' heavenly residence embellished with complex designs."
    },
  ];
}
