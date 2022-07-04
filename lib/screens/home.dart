import 'package:ffxiv_opener/components/ability_action.dart';
import 'package:ffxiv_opener/components/ability_timeline.dart';
import 'package:ffxiv_opener/components/job_swapper.dart';
import 'package:ffxiv_opener/models/ability.dart';
import 'package:ffxiv_opener/models/ability_data.dart';
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
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

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
            margin: const EdgeInsets.all(0),
            child: const JobSwapper(),
          ),
          Expanded(
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 2.0, vertical: 8.0),
              child: Consumer<AbilityData>(
                builder: (_, abilityData, __) {
                  List<Ability> abilities = abilityData.all();

                  return GridView.count(
                    childAspectRatio: (1 / .3),
                    shrinkWrap: true,
                    crossAxisCount: isPortrait ? 2 : 4,
                    children: List.generate(
                      abilities.length,
                      (index) {
                        Ability ability = abilities[index];

                        return AbilityAction(ability: ability);
                      },
                    ),
                  );
                  // return ListView.builder(
                  //   shrinkWrap: true,
                  //   itemCount: abilities.length,
                  //   itemBuilder: (BuildContext context, int index) {
                  //     Ability ability = abilities[index];
                  //
                  //     return AbilityAction(ability: ability);
                  //   },
                  // );
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
