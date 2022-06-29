import 'package:ffxiv_opener/models/ability.dart';
import 'package:flutter/material.dart';

import 'ability_action.dart';

class AbilityTimeline extends StatelessWidget {
  final List<Ability> abilities;

  const AbilityTimeline({
    Key? key,
    required this.abilities,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFc9c9c9),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: abilities.length,
        itemBuilder: (context, int index) {
          Ability ability = abilities[index];

          return AbilityAction(ability: ability, complete: false);
        },
      ),
    );
  }
}
