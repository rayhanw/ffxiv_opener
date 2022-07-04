enum Job {
  // Tanks
  war,
  gnb,
  drk,
  pld,
  // Healers
  whm,
  sch,
  ast,
  sge,
  // Melees
  mnk,
  sam,
  rpr,
  drg,
  nin,
  // Physical Ranges
  mch,
  dnc,
  brd,
  // Casters
  blm,
  rdm,
  smn,
}

enum Category {
  tank,
  healer,
  dps,
}

extension ParseToString on Job {
  String toShortString() {
    return toString().split('.').last.toUpperCase();
  }
}

String getJobActions(Job job) {
  String url;
  switch (job) {
    case Job.war:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=21;3,ClassJobCategory.WAR=1,IsPvP=0&';
      break;
    case Job.gnb:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=37;3,ClassJobCategory.GNB=1,IsPvP=0&';
      break;
    case Job.drk:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=32;3,ClassJobCategory.DRK=1,IsPvP=0&';
      break;
    case Job.pld:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=19;3,ClassJobCategory.PLD=1,IsPvP=0&';
      break;
    case Job.whm:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=24;3,ClassJobCategory.WHM=1,IsPvP=0&';
      break;
    case Job.sch:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=28;3,ClassJobCategory.SCH=1,IsPvP=0&';
      break;
    case Job.ast:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=33;3,ClassJobCategory.AST=1,IsPvP=0&';
      break;
    case Job.sge:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=40;3,ClassJobCategory.SGE=1,IsPvP=0&';
      break;
    case Job.mnk:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=20;2,ClassJobCategory.MNK=1,IsPvP=0&';
      break;
    case Job.sam:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=34;2,ClassJobCategory.SAM=1,IsPvP=0&';
      break;
    case Job.rpr:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=39;2,ClassJobCategory.RPR=1,IsPvP=0&';
      break;
    case Job.drg:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=22;2,ClassJobCategory.DRG=1,IsPvP=0&';
      break;
    case Job.nin:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=30;2,ClassJobCategory.NIN=1,IsPvP=0&';
      break;
    case Job.mch:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=31,ClassJobCategory.MCH=1,IsPvP=0&';
      break;
    case Job.dnc:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=38,ClassJobCategory.DNC=1,IsPvP=0&';
      break;
    case Job.brd:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=23;5,ClassJobCategory.BRD=1,IsPvP=0&';
      break;
    case Job.blm:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=25;7,ClassJobCategory.BLM=1,IsPvP=0&';
      break;
    case Job.rdm:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=35,ClassJobCategory.RDM=1,IsPvP=0&';
      break;
    case Job.smn:
      url =
          'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=27;3,ClassJobCategory.SMN=1,IsPvP=0&';
      break;
  }

  List<String> additions = [
    'sort_field=ClassJobLevel',
    'Columns=Name,CooldownGroup,Icon,ID'
  ];

  return '$url${additions.join('&')}';
}

String buildActionIcon(String icon) {
  const baseUrl = 'https://xivapi.com';

  return '$baseUrl$icon';
}

String gcd(int cooldownGroup) => cooldownGroup == 58 ? 'GCD' : 'oGCD';
