import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  const ItemModel(
      {this.image,
      required this.jpName,
      required this.enName,
      required this.sound});

  final String? image;
  final String jpName;
  final String enName;
  final String sound;

  playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
