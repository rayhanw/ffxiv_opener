import 'package:flutter/material.dart';

class AbilityAction extends StatelessWidget {
  final String name;
  final String category;
  final String url;
  final bool complete;
  final bool off;

  const AbilityAction({
    Key? key,
    required this.name,
    required this.category,
    required this.url,
    this.complete = true,
    this.off = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (complete) {
      return SizedBox(
        width: 200.0,
        child: Row(
          children: <Widget>[
            ActionImage(url: url, off: off),
            const SizedBox(width: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(
                  category,
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

    if (off) {
      ActionImage(url: url, off: true);
    }

    return ActionImage(url: url, off: off);
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
      return 50;
    }

    return 60;
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
