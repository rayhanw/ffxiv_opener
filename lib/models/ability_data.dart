import 'dart:collection';

import 'package:ffxiv_opener/models/ability.dart';
import 'package:flutter/material.dart';

class AbilityData extends ChangeNotifier {
  late final List<Ability> _abilities = [
    const Ability(
      name: 'Gnashing Fang',
      category: 'Weaponskill',
      off: true,
      url: 'https://ffxiv.gamerescape.com/w/images/6/62/Gnashing_Fang_Icon.png',
    ),
  ];
  // late final List<Ability> _abilities = [
  //   Ability(
  //     name: 'Double Down',
  //     category: 'Weaponskill',
  //     url: 'https://ffxiv.gamerescape.com/w/images/6/65/Double_Down_Icon.png',
  //     off: false,
  //   ),
  //   Ability(
  //     name: 'No Mercy',
  //     category: 'Ability',
  //     off: true,
  //     url: 'https://ffxiv.gamerescape.com/w/images/8/89/No_Mercy_Icon.png',
  //   ),
  //   Ability(
  //     name: 'Gnashing Fang',
  //     category: 'Weaponskill',
  //     off: true,
  //     url: 'https://ffxiv.gamerescape.com/w/images/6/62/Gnashing_Fang_Icon.png',
  //   ),
  //   Ability(
  //     name: 'Jugular Rip',
  //     category: 'Ability',
  //     off: false,
  //     url: 'https://ffxiv.gamerescape.com/w/images/0/05/Jugular_Rip_Icon.png',
  //   ),
  // ];

  UnmodifiableListView<Ability> all() {
    return UnmodifiableListView(_abilities);
  }

  void add({required Ability ability}) {
    _abilities.add(ability);
    notifyListeners();
  }

  void remove(int index) {
    _abilities.removeAt(index);
    notifyListeners();
  }
}
