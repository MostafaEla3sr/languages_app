import 'package:flutter/material.dart';
import 'package:languages_app/widgets/item_info.dart';

import '../models/item_model.dart';

class CustomItem extends StatelessWidget {
  const CustomItem(
      {Key? key,
      required this.item,
      required this.itemColor,
      required this.imgColor,
      required this.btnColor})
      : super(key: key);
  final ItemModel item;
  final Color itemColor, imgColor, btnColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: itemColor,
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: -2,
            color: Colors.grey,
          )
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
      height: 80,
      width: double.infinity,
      child: Row(
        children: [
          Container(
            height: 80,
            color: imgColor,
            child: Image.asset(
              item.image!,
            ),
          ),
          Expanded(
              child: ItemInfo(
            btnColor: btnColor,
            itemModel: item,
          )),
        ],
      ),
    );
  }
}
