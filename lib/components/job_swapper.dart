import 'package:ffxiv_opener/components/job_button.dart';
import 'package:ffxiv_opener/utils.dart';
import 'package:flutter/material.dart';

class JobSwapper extends StatefulWidget {
  const JobSwapper({Key? key}) : super(key: key);

  @override
  State<JobSwapper> createState() => _JobSwapperState();
}

class _JobSwapperState extends State<JobSwapper> {
  Job activeJob = Job.gnb;

  void setActiveJob(Job job) {
    setState(() {
      activeJob = job;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Tanks',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: tankColor,
              ),
            ),
            TankJobsSwapper(
              activeJob: activeJob,
              setActiveJob: setActiveJob,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Healers',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: healerColor,
              ),
            ),
            HealerJobsSwapper(
              activeJob: activeJob,
              setActiveJob: setActiveJob,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Melees',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: dpsColor,
              ),
            ),
            MeleeJobsSwapper(
              activeJob: activeJob,
              setActiveJob: setActiveJob,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Physical Range',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: dpsColor,
              ),
            ),
            PhysicalRangeJobsSwapper(
              activeJob: activeJob,
              setActiveJob: setActiveJob,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Casters',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: dpsColor,
              ),
            ),
            CasterJobsSwapper(
              activeJob: activeJob,
              setActiveJob: setActiveJob,
            ),
          ],
        ),
      ],
    );
  }
}

class TankJobsSwapper extends StatelessWidget {
  final Function setActiveJob;
  final Job activeJob;

  const TankJobsSwapper({
    Key? key,
    required this.setActiveJob,
    required this.activeJob,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      alignment: WrapAlignment.start,
      children: <Widget>[
        JobButton(
          activeJob: activeJob,
          job: Job.gnb,
          name: 'GNB',
          setActiveJob: setActiveJob,
          category: Category.tank,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.drk,
          name: 'DRK',
          setActiveJob: setActiveJob,
          category: Category.tank,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.war,
          name: 'WAR',
          setActiveJob: setActiveJob,
          category: Category.tank,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.pld,
          name: 'PLD',
          setActiveJob: setActiveJob,
          category: Category.tank,
        ),
      ],
    );
  }
}

class HealerJobsSwapper extends StatelessWidget {
  final Function setActiveJob;
  final Job activeJob;

  const HealerJobsSwapper({
    Key? key,
    required this.setActiveJob,
    required this.activeJob,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      alignment: WrapAlignment.start,
      children: <Widget>[
        JobButton(
          activeJob: activeJob,
          job: Job.whm,
          name: 'WHM',
          setActiveJob: setActiveJob,
          category: Category.healer,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.sch,
          name: 'SCH',
          setActiveJob: setActiveJob,
          category: Category.healer,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.ast,
          name: 'AST',
          setActiveJob: setActiveJob,
          category: Category.healer,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.sge,
          name: 'SGE',
          setActiveJob: setActiveJob,
          category: Category.healer,
        ),
      ],
    );
  }
}

class MeleeJobsSwapper extends StatelessWidget {
  final Function setActiveJob;
  final Job activeJob;

  const MeleeJobsSwapper({
    Key? key,
    required this.setActiveJob,
    required this.activeJob,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      alignment: WrapAlignment.start,
      children: <Widget>[
        JobButton(
          activeJob: activeJob,
          job: Job.mnk,
          name: 'MNK',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.sam,
          name: 'SAM',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.rpr,
          name: 'RPR',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.drg,
          name: 'DRG',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.nin,
          name: 'NIN',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
      ],
    );
  }
}

class PhysicalRangeJobsSwapper extends StatelessWidget {
  final Function setActiveJob;
  final Job activeJob;

  const PhysicalRangeJobsSwapper({
    Key? key,
    required this.setActiveJob,
    required this.activeJob,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      alignment: WrapAlignment.start,
      children: <Widget>[
        JobButton(
          activeJob: activeJob,
          job: Job.mch,
          name: 'MCH',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.dnc,
          name: 'DNC',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.brd,
          name: 'BRD',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
      ],
    );
  }
}

class CasterJobsSwapper extends StatelessWidget {
  final Function setActiveJob;
  final Job activeJob;

  const CasterJobsSwapper({
    Key? key,
    required this.setActiveJob,
    required this.activeJob,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16.0,
      children: <Widget>[
        JobButton(
          activeJob: activeJob,
          job: Job.blm,
          name: 'BLM',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.rdm,
          name: 'RDM',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
        JobButton(
          activeJob: activeJob,
          job: Job.smn,
          name: 'SMN',
          setActiveJob: setActiveJob,
          category: Category.dps,
        ),
      ],
    );
  }
}
