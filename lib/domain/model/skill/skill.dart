enum SkillType { arm, abs, leg, yoga }

class Skill {
  final SkillType type;
  final String name;
  final int range;

  const Skill({
    required this.type,
    required this.name,
    required this.range,
  });
}
