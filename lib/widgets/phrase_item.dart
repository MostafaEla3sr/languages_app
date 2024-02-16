import 'package:flutter/material.dart';
import 'package:languages_app/models/item_model.dart';

class PhraseItem extends StatefulWidget {
  const PhraseItem({Key? key, required this.phrase, required this.color})
      : super(key: key);
  final ItemModel phrase;

  final Color color;

  @override
  State<PhraseItem> createState() => _PhraseItemState();
}

class _PhraseItemState extends State<PhraseItem> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: widget.color,
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
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.phrase.enName,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/audio.png',
                height: 50,
                width: MediaQuery.sizeOf(context).width - 80,
                fit: BoxFit.fill,
                color: isPressed ? Colors.red : Colors.red.withOpacity(0.5) ,
              ),
              IconButton(
                onPressed: () async {
                  widget.phrase.playSound();
                  setState(() {
                    isPressed = true;
                  });
                },
                icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            textAlign: TextAlign.center,
            widget.phrase.jpName,
            style: const TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
            // maxLines: 1,
            // overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
