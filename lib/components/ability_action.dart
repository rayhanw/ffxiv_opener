import 'package:ffxiv_opener/models/ability.dart';
import 'package:ffxiv_opener/models/timeline_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AbilityAction extends StatelessWidget {
  final Ability ability;
  final bool complete;

  const AbilityAction({Key? key, required this.ability, this.complete = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (complete) {
      return SizedBox(
        height: 60,
        child: TextButton(
          onPressed: () {
            Provider.of<TimelineData>(
              context,
              listen: false,
            ).add(ability: ability);
          },
          child: SizedBox(
            height: 50,
            child: Row(
              children: <Widget>[
                ActionImage(url: ability.url),
                const SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 120,
                      child: Text(
                        ability.name,
                        maxLines: 1,
                        overflow: TextOverflow.fade,
                        softWrap: false,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      ability.category,
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }

    return ActionImage(url: ability.url, isGcd: ability.isGcd);
  }
}

class ActionImage extends StatelessWidget {
  final String url;
  final bool isGcd;

  const ActionImage({
    Key? key,
    required this.url,
    this.isGcd = true,
  }) : super(key: key);

  double determineSize() {
    if (!isGcd) {
      return 35;
    }

    return 40;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: Image.network(
        url,
        width: determineSize(),
        height: determineSize(),
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
