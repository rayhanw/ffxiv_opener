import 'dart:collection';
import 'dart:convert';

import 'package:ffxiv_opener/models/ability.dart';
import 'package:ffxiv_opener/utils.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AbilityData extends ChangeNotifier {
  late List<Ability> _abilities = [];

  Future<void> loadInitial() async {
    String urlStr = getJobActions(Job.gnb);
    Uri uri = Uri.parse(urlStr);
    http.Response response = await http.get(uri);
    Map<String, dynamic> result = jsonDecode(response.body);
    List<dynamic> actions = result['Results'];

    List<Ability> abilities = actions.map((action) {
      return Ability(
        id: action['ID'],
        category: gcd(action['CooldownGroup']),
        url: buildActionIcon(action['Icon']),
        name: action['Name'],
        off: false,
      );
    }).toList();

    _abilities = abilities;
  }

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

  void swapJobs(Job job) async {
    String urlStr = getJobActions(job);
    Uri uri = Uri.parse(urlStr);
    http.Response response = await http.get(uri);
    Map<String, dynamic> result = jsonDecode(response.body);
    List<dynamic> actions = result['Results'];

    List<Ability> abilities = actions.map((action) {
      return Ability(
        id: action['ID'],
        category: action['UrlType'],
        url: buildActionIcon(action['Icon']),
        name: action['Name'],
        off: false,
      );
    }).toList();

    _abilities = abilities;
    notifyListeners();
  }
}
