import 'package:flutter/material.dart';
import 'package:languages_app/models/item_model.dart';
import 'package:languages_app/widgets/custom_item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({Key? key}) : super(key: key);

  final List<ItemModel> familyMembers = const [
    ItemModel(
      enName: 'father',
      jpName: 'Chichioya ',
      image: 'assets/images/family_members/family_father.png',
      sound: 'sounds/family_members/father.wav',
    ),
    ItemModel(
      enName: 'mother',
      jpName: 'Hahaoya',
      image: 'assets/images/family_members/family_mother.png',
      sound: 'sounds/family_members/mother.wav',
    ),
    ItemModel(
      enName: 'son',
      jpName: 'Musuko',
      image: 'assets/images/family_members/family_son.png',
      sound: 'sounds/family_members/son.wav',
    ),
    ItemModel(
      enName: 'daughter',
      jpName: 'Musume',
      image: 'assets/images/family_members/family_daughter.png',
      sound: 'sounds/family_members/daughter.wav',
    ),
    ItemModel(
      enName: 'grand father',
      jpName: 'Ojīsan',
      image: 'assets/images/family_members/family_grandfather.png',
      sound: 'sounds/family_members/grand father.wav',
    ),
    ItemModel(
      enName: 'grand mother',
      jpName: 'Sobo',
      image: 'assets/images/family_members/family_grandmother.png',
      sound: 'sounds/family_members/grand mother.wav',
    ),
    ItemModel(
      enName: 'older brother',
      jpName: 'Nisan',
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'sounds/family_members/older bother.wav',
    ),
    ItemModel(
      enName: 'younger brother',
      jpName: 'Otōto',
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    ItemModel(
      enName: 'older sister',
      jpName: 'Ane',
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'sounds/family_members/older sister.wav',
    ),
    ItemModel(
      enName: 'younger sister',
      jpName: 'Imōto',
      image: 'assets/images/family_members/family_younger_sister.png',
      sound: 'sounds/family_members/younger sister.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'F',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber),
            ),
            Text(
              'A',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text(
              'M',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.purpleAccent),
            ),
            Text(
              'I',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            Text(
              'L',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            Text(
              'Y',
              style: TextStyle(
                  fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Image.asset(
              'assets/images/family.jpg',
              width: double.infinity,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: familyMembers.length,
              (context, index) => CustomItem(
                imgColor: const Color(0xffC3B23E),
                btnColor: const Color(0xFFA1922B),
                item: familyMembers[index],
                itemColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
