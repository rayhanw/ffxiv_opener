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
    return Column(
      children: <Widget>[
        TankJobsSwapper(clearTimeline: clearTimeline),
        HealerJobsSwapper(clearTimeline: clearTimeline),
        MeleeJobsSwapper(clearTimeline: clearTimeline),
        PhysicalRangeJobsSwapper(clearTimeline: clearTimeline),
        CasterJobsSwapper(clearTimeline: clearTimeline),
      ],
    );
  }
}

class TankJobsSwapper extends StatelessWidget {
  final Function(BuildContext) clearTimeline;

  const TankJobsSwapper({Key? key, required this.clearTimeline})
      : super(key: key);

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

class HealerJobsSwapper extends StatelessWidget {
  final Function(BuildContext) clearTimeline;

  const HealerJobsSwapper({Key? key, required this.clearTimeline})
      : super(key: key);

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
            ).swapJobs(Job.whm);
            clearTimeline(context);
          },
          child: const Text('WHM'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.sch);
            clearTimeline(context);
          },
          child: const Text('SCH'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.ast);
            clearTimeline(context);
          },
          child: const Text('AST'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.sge);
            clearTimeline(context);
          },
          child: const Text('SGE'),
        ),
      ],
    );
  }
}

class MeleeJobsSwapper extends StatelessWidget {
  final Function(BuildContext) clearTimeline;

  const MeleeJobsSwapper({Key? key, required this.clearTimeline})
      : super(key: key);

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
            ).swapJobs(Job.mnk);
            clearTimeline(context);
          },
          child: const Text('MNK'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.sam);
            clearTimeline(context);
          },
          child: const Text('SAM'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.rpr);
            clearTimeline(context);
          },
          child: const Text('RPR'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.drg);
            clearTimeline(context);
          },
          child: const Text('DRG'),
        ),
      ],
    );
  }
}

class PhysicalRangeJobsSwapper extends StatelessWidget {
  final Function(BuildContext) clearTimeline;

  const PhysicalRangeJobsSwapper({Key? key, required this.clearTimeline})
      : super(key: key);

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
            ).swapJobs(Job.mch);
            clearTimeline(context);
          },
          child: const Text('MCH'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.brd);
            clearTimeline(context);
          },
          child: const Text('BRD'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.dnc);
            clearTimeline(context);
          },
          child: const Text('DNC'),
        ),
      ],
    );
  }
}

class CasterJobsSwapper extends StatelessWidget {
  final Function(BuildContext) clearTimeline;

  const CasterJobsSwapper({Key? key, required this.clearTimeline})
      : super(key: key);

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
            ).swapJobs(Job.blm);
            clearTimeline(context);
          },
          child: const Text('BLM'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.rdm);
            clearTimeline(context);
          },
          child: const Text('RDM'),
        ),
        ElevatedButton(
          onPressed: () {
            Provider.of<AbilityData>(
              context,
              listen: false,
            ).swapJobs(Job.smn);
            clearTimeline(context);
          },
          child: const Text('SMN'),
        ),
      ],
    );
  }
}
