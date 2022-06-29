import 'package:ffxiv_opener/models/ability.dart';
import 'package:flutter/material.dart';

class AbilityAction extends StatelessWidget {
  final Ability ability;
  final bool complete;

  const AbilityAction({Key? key, required this.ability, this.complete = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (complete) {
      return SizedBox(
        width: 200.0,
        child: Row(
          children: <Widget>[
            ActionImage(url: ability.url, off: ability.off),
            const SizedBox(width: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(ability.name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  ability.category,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return LongPressDraggable(
      feedback: ActionImage(url: ability.url, off: ability.off),
      child: ActionImage(url: ability.url, off: ability.off),
    );
  }
}

class ActionImage extends StatelessWidget {
  final String url;
  final bool off;

  const ActionImage({
    Key? key,
    required this.url,
    this.off = false,
  }) : super(key: key);

  double determineSize() {
    if (off) {
      return 70;
    }

    return 80;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.network(
        url,
        width: determineSize(),
        height: determineSize(),
      ),
    );
  }
}
