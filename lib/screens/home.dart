import 'package:ffxiv_opener/components/ability_action.dart';
import 'package:ffxiv_opener/components/ability_timeline.dart';
import 'package:ffxiv_opener/models/ability.dart';
import 'package:ffxiv_opener/models/ability_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        children: [
          const SizedBox(
            height: 60,
            child: AbilityTimeline(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16.0),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              children: <Widget>[
                MaterialButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    Provider.of<AbilityData>(context, listen: false).add(
                      ability: const Ability(
                        name: 'No Mercy',
                        category: 'Ability',
                        url:
                            'https://ffxiv.gamerescape.com/w/images/8/89/No_Mercy_Icon.png',
                      ),
                    );
                  },
                  child: const AbilityAction(
                    ability: Ability(
                      name: 'No Mercy',
                      category: 'Ability',
                      url:
                          'https://ffxiv.gamerescape.com/w/images/8/89/No_Mercy_Icon.png',
                    ),
                  ),
                ),
                MaterialButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    Provider.of<AbilityData>(context, listen: false).add(
                      ability: const Ability(
                        name: 'Double Down',
                        category: 'Weaponskill',
                        url:
                            'https://ffxiv.gamerescape.com/w/images/6/65/Double_Down_Icon.png',
                      ),
                    );
                  },
                  child: const AbilityAction(
                    ability: Ability(
                      name: 'Double Down',
                      category: 'Weaponskill',
                      url:
                          'https://ffxiv.gamerescape.com/w/images/6/65/Double_Down_Icon.png',
                    ),
                  ),
                ),
              ],
            ),
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
