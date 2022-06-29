import 'package:ffxiv_opener/components/ability_action.dart';
import 'package:ffxiv_opener/components/ability_timeline.dart';
import 'package:ffxiv_opener/models/ability.dart';
import 'package:ffxiv_opener/models/ability_data.dart';
import 'package:ffxiv_opener/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loadInitial();
  }

  void loadInitial() async {
    await context.read<AbilityData>().loadInitial();
    // Don't remove, dumb way of triggering rebuild of widget to show the pictures.
    setState(() {});
  }

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
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Wrap(
              spacing: 16.0,
              alignment: WrapAlignment.start,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Provider.of<AbilityData>(
                      context,
                      listen: false,
                    ).swapJobs(Job.gnb);
                  },
                  child: const Text('GNB'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<AbilityData>(
                      context,
                      listen: false,
                    ).swapJobs(Job.war);
                  },
                  child: const Text('WAR'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<AbilityData>(
                      context,
                      listen: false,
                    ).swapJobs(Job.drk);
                  },
                  child: const Text('DRK'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<AbilityData>(
                      context,
                      listen: false,
                    ).swapJobs(Job.pld);
                  },
                  child: const Text('PLD'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Consumer<AbilityData>(
                builder: (_, abilityData, __) {
                  List<Ability> abilities = abilityData.all();

                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: abilities.length,
                    itemBuilder: (BuildContext context, int index) {
                      Ability ability = abilities[index];

                      return AbilityAction(ability: ability);
                    },
                  );
                },
              ),
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

// children: <Widget>[
// MaterialButton(
// padding: const EdgeInsets.all(0),

// child: const AbilityAction(
// ability: Ability(
// id: 16138,
// name: 'No Mercy',
// category: 'Ability',
// url:
// 'https://ffxiv.gamerescape.com/w/images/8/89/No_Mercy_Icon.png',
// ),
// ),
// ),
// ],
