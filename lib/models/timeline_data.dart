import 'dart:collection';

import 'package:ffxiv_opener/models/ability.dart';
import 'package:flutter/material.dart';

class TimelineData extends ChangeNotifier {
  late final List<Ability> _timeline = [];

  UnmodifiableListView<Ability> all() {
    return UnmodifiableListView(_timeline);
  }

  void add({required Ability ability}) {
    _timeline.add(ability);
    notifyListeners();
  }

  void remove({required int index}) {
    _timeline.removeAt(index);
    notifyListeners();
  }
}
