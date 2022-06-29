import 'package:ffxiv_opener/components/ability_timeline.dart';
import 'package:ffxiv_opener/models/ability.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: const Text("FFXIV Opener"),
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 60,
            child: AbilityTimeline(abilities: abilities),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add),
      ),
    );
  }
}

const List<Ability> abilities = [
  Ability(
    name: 'Double Down',
    category: 'Weaponskill',
    url: 'https://ffxiv.gamerescape.com/w/images/6/65/Double_Down_Icon.png',
    off: false,
  ),
  Ability(
    name: 'No Mercy',
    category: 'Ability',
    off: true,
    url: 'https://ffxiv.gamerescape.com/w/images/8/89/No_Mercy_Icon.png',
  ),
  Ability(
    name: 'Gnashing Fang',
    category: 'Weaponskill',
    off: true,
    url: 'https://ffxiv.gamerescape.com/w/images/6/62/Gnashing_Fang_Icon.png',
  ),
  Ability(
    name: 'Jugular Rip',
    category: 'Ability',
    off: false,
    url: 'https://ffxiv.gamerescape.com/w/images/0/05/Jugular_Rip_Icon.png',
  ),
];
