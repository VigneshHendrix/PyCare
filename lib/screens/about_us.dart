import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:pycare/components/info_card.dart';
import 'package:pycare/components/my_appbar.dart';
import 'package:pycare/components/my_colors.dart';
import 'package:pycare/providers/translation.dart';

class AboutUs extends StatelessWidget {
  final List<InfoCard> details = [
    InfoCard(
        "Dr. Selvaradjou Ka",
        "Head",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/selvaraj.jpg?raw=true",
        "selvaraj@pec.edu",
        null,
        "https://www.linkedin.com/in/selvaradjou-kandasamy-6a083748/",
        null,
        null,
        "https://www.facebook.com/selvaraj.kandasamy.106/"),
    InfoCard(
        "Durga Prasad",
        "Lead",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/durga.jpg?raw=true",
        "durgaprasadpalla96@pec.edu",
        "https://www.instagram.com/durga_prasad_palla/",
        "https://www.linkedin.com/in/durgaprasadpalla",
        null,
        null,
        null),
    InfoCard(
        "Monica Emmanuel",
        "UI Designer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/monica.jpg?raw=true",
        "monicaemm2708@gmail.com",
        "https://www.instagram.com/_monica_emmanuel_/",
        "https://www.linkedin.com/in/monica-emmanuel-a943a7211",
        null,
        null,
        null),
    InfoCard(
        "Logaprasanna",
        "UI Designer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/prasanna.jpg?raw=true",
        "logaprasanna07042000@gmail.com",
        "https://www.instagram.com/actuallyprasanna",
        null,
        null,
        "https://github.com/i-prasanna",
        null),
    InfoCard(
        "Vignesh Hendrix",
        "Frontend Developer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/vignesh1.jpg?raw=true",
        null,
        "https://www.instagram.com/vignesh_hendrix/",
        null,
        "https://vigneshhendrix.github.io/#/",
        "https://github.com/VigneshHendrix",
        null),
    InfoCard(
        "Ayush Singh",
        "Frontend Developer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/ayush.jpg?raw=true",
        null,
        "https://www.instagram.com/ayush.singh78/",
        "https://www.linkedin.com/in/ayush-singh-9b77641b4/",
        null,
        "https://github.com/ayushved78",
        null),
    InfoCard(
        "Anshul Sharma",
        "Frontend Developer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/anshul.jpg?raw=true",
        null,
        "https://www.instagram.com/anshul_sharma_2002/",
        "https://www.linkedin.com/in/anshul-sharma-1232a91b0/",
        null,
        "https://www.github.com/anshul-sharma-2002",
        null),
    InfoCard(
        "Prince Sanjivy",
        "Backend Developer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/sanjivjy.jpg?raw=true",
        null,
        "https://www.instagram.com/princesanjivy/",
        null,
        "https://princesanjivy-portfolio.web.app/",
        "https://www.github.com/princesanjivy/",
        null),
    InfoCard(
        "Aswini S",
        "Backend Developer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/aswini.jpg?raw=true",
        "s.aswini1711@gmail.com",
        "https://www.instagram.com/_ashi_1713_/",
        null,
        null,
        "https://github.com/aswini17",
        null),
    InfoCard(
        "Akshay R R",
        "Backend Developer",
        "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/assets/images/akshay.jpg?raw=true",
        null,
        "https://www.instagram.com/akshay_rr10/",
        "https://www.linkedin.com/in/akshayrr1027/",
        null,
        "https://github.com/akshay1027",
        null),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TranslationText>(builder: (context, translation, child) {
      return Scaffold(
        backgroundColor: bgColor,
        appBar: MyAppBar(
          title: translation.getTranslatedText("About Us"),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(
                      "https://github.com/DSC-PEC-Puducherry/PyCare/blob/master/images/dsc_logo.png?raw=true",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                translation.getTranslatedText(
                    "An Outcome of Google DSC PTU,Puducherry"),
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 15,
                    fontStyle: FontStyle.italic,
                    //color: Colors.white,
                  ),
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(FontAwesomeIcons.envelope),
                    iconSize: 25,
                    onPressed: () {
                      translation.setCurrentLanguage("tamil");
                      // launch("mailto:google.dsc@pec.edu");
                    },
                  ),
                  IconButton(
                    icon: Icon(FontAwesomeIcons.instagram),
                    iconSize: 25,
                    onPressed: () {
                      translation.setCurrentLanguage("hindi");

                      // launch('https://www.instagram.com/dsc_pec/');
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 30,
              thickness: 2,
              color: darkBlue,
            ),
            // GridView.count(
            //   padding: EdgeInsets.all(8),
            //   shrinkWrap: true,
            //   childAspectRatio: (1 / 1),
            //   physics: ScrollPhysics(),
            //   crossAxisCount: 2,
            //   children: List.generate(details.length, (index) {
            //     return details[index];
            //   }),
            // ),
            // ignore: missing_return
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        details[index * 2],
                        SizedBox(
                          width: 5.0,
                        ),
                        details[(index * 2) + 1],
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                );
              },
            ),
          ],
        ),
      );
    });
  }
}
