import 'package:ffxiv_opener/models/ability_data.dart';
import 'package:ffxiv_opener/models/timeline_data.dart';
import 'package:ffxiv_opener/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const Color tankColor = Color(0xFF4155bb);
const Color healerColor = Color(0xFF437234);
const Color dpsColor = Color(0xFF803b3c);

class JobButton extends StatelessWidget {
  final Job job;
  final Job activeJob;
  final Category category;
  final String name;
  final Function setActiveJob;

  const JobButton({
    Key? key,
    required this.job,
    required this.name,
    required this.category,
    required this.activeJob,
    required this.setActiveJob,
  }) : super(key: key);

  void clearTimeline(BuildContext context) {
    Provider.of<TimelineData>(
      context,
      listen: false,
    ).clear();
  }

  ButtonStyle getButtonStyle() {
    if (category == Category.tank) {
      if (activeJob == job) {
        return ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(tankColor),
        );
      } else {
        return ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              width: 2.0,
              color: tankColor,
            ),
          ),
        );
      }
    } else if (category == Category.healer) {
      if (activeJob == job) {
        return ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(healerColor),
        );
      } else {
        return ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              width: 2.0,
              color: healerColor,
            ),
          ),
        );
      }
    } else {
      if (activeJob == job) {
        return ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(dpsColor),
        );
      } else {
        return ButtonStyle(
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              width: 2.0,
              color: dpsColor,
            ),
          ),
        );
      }
    }
  }

  TextStyle getTextStyle() {
    if (activeJob == job) {
      return const TextStyle(color: Colors.white);
    }

    switch (category) {
      case Category.tank:
        return const TextStyle(color: tankColor);
      case Category.healer:
        return const TextStyle(color: healerColor);
      case Category.dps:
        return const TextStyle(color: dpsColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Provider.of<AbilityData>(
          context,
          listen: false,
        ).swapJobs(job);
        clearTimeline(context);
        setActiveJob(job);
      },
      style: getButtonStyle(),
      child: Text(name, style: getTextStyle()),
    );
  }
}
