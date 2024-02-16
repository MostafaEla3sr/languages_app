import 'package:flutter/material.dart';
import 'package:languages_app/pages/colors_page.dart';
import 'package:languages_app/pages/family_members_page.dart';
import 'package:languages_app/pages/numbers_page.dart';
import 'package:languages_app/pages/phrases_page.dart';

import '../widgets/custom_category.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'T',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            Text(
              'O',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text(
              'K',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent),
            ),
            Text(
              'U',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Category(
                imgPadding: 40,
                textPadding: 30,
                height: MediaQuery.sizeOf(context).height / 2.5,
                textColor: const Color(0xff1CB6CE),
                img: 'assets/images/numbers.jpg',
                text: 'Numbers',
                backgroundColor: const Color(0xffEAFFF8),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const NumbersPage();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Category(
                textPadding: 40,
                height: MediaQuery.sizeOf(context).height / 3.3,
                textColor: const Color(0xffA31069),
                img: 'assets/images/colors.jpg',
                text: 'Colors',
                backgroundColor: Colors.white,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const ColorsPage();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Category(
                imgPadding: 20,
                textPadding: 20,
                height: MediaQuery.sizeOf(context).height / 3,
                textColor: const Color(0xffE42312),
                img: 'assets/images/phrases.jpg',
                text: 'Phrases',
                backgroundColor: Colors.white,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const PhrasesPage();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Category(
                textPadding: 25,
                height: MediaQuery.sizeOf(context).height / 2.7,
                textColor: Colors.white,
                img: 'assets/images/family.jpg',
                text: '   Family\n Members',
                backgroundColor: const Color(0xffA1922B),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const FamilyMembersPage();
                      },
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
