import 'dart:collection';

import 'package:ffxiv_opener/models/ability.dart';
import 'package:flutter/material.dart';

class AbilityData extends ChangeNotifier {
  late final List<Ability> _abilities = [];

  UnmodifiableListView<Ability> all() {
    return UnmodifiableListView(_abilities);
  }

  void add({required String name, required String category, required String url, bool off = false}) {
    Ability ability = Ability(name: name, category: category, url: url, off: off,);

    _abilities.add(ability);
    notifyListeners();
  }

  void remove(int index) {
    _abilities.removeAt(index);
    notifyListeners();
  }
}
