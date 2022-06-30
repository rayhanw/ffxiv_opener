import 'package:ffxiv_opener/models/ability_data.dart';
import 'package:ffxiv_opener/models/timeline_data.dart';
import 'package:ffxiv_opener/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class JobSwapper extends StatelessWidget {
  const JobSwapper({Key? key}) : super(key: key);

  void clearTimeline(BuildContext context) {
    Provider.of<TimelineData>(
      context,
      listen: false,
    ).clear();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      alignment: WrapAlignment.start,
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.gnb);
            clearTimeline(context);
          },
          child: const Text('GNB'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.war);
            clearTimeline(context);
          },
          child: const Text('WAR'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.drk);
            clearTimeline(context);
          },
          child: const Text('DRK'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.pld);
            clearTimeline(context);
          },
          child: const Text('PLD'),
        ),
      ],
    );
  }
}
