import 'package:ffxiv_opener/models/ability.dart';
import 'package:ffxiv_opener/models/timeline_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ability_action.dart';

class AbilityTimeline extends StatelessWidget {
  const AbilityTimeline({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TimelineData>(builder: (context, timelineData, index) {
      List<Ability> abilities = timelineData.all();

      return Container(
        color: Colors.grey.shade200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: abilities.length,
          itemBuilder: (context, int index) {
            Ability ability = abilities[index];

            return MaterialButton(
              padding: const EdgeInsets.all(0),
              onPressed: () {
                Provider.of<TimelineData>(context, listen: false).remove(index);
              },
              child: AbilityAction(ability: ability, complete: false),
            );
          },
        ),
      );
    });
  }
}
