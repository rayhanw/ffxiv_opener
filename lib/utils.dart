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

String getJobActions(Job job) {
  switch (job) {
    case Job.war:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=21;3,ClassJobCategory.WAR=1';
    case Job.gnb:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=37;3,ClassJobCategory.GNB=1';
    case Job.drk:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=32;3,ClassJobCategory.DRK=1';
    case Job.pld:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=19;3,ClassJobCategory.PLD=1';
    case Job.whm:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=24;3,ClassJobCategory.WHM=1';
    case Job.sch:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=28;3,ClassJobCategory.SCH=1';
    case Job.ast:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=33;3,ClassJobCategory.AST=1';
    case Job.sge:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=40;3,ClassJobCategory.SGE=1';
    case Job.mnk:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=20;2,ClassJobCategory.MNK=1';
    case Job.sam:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=34;2,ClassJobCategory.SAM=1';
    case Job.rpr:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=39;2,ClassJobCategory.RPR=1';
    case Job.drg:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=22;2,ClassJobCategory.DRG=1';
    case Job.nin:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=30;2,ClassJobCategory.NIN=1';
    case Job.mch:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=31,ClassJobCategory.MCH=1';
    case Job.dnc:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=38,ClassJobCategory.DNC=1';
    case Job.brd:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=23;5,ClassJobCategory.BRD=1';
    case Job.blm:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=25;7,ClassJobCategory.BLM=1';
    case Job.rdm:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=35,ClassJobCategory.RDM=1';
    case Job.smn:
      return 'https://xivapi.com/search?indexes=Action&filters=ClassJobTargetID|=27;3,ClassJobCategory.SMN=1';
  }
}

String buildActionIcon(String icon) {
  const baseUrl = 'https://xivapi.com';

  return '$baseUrl$icon';
}
