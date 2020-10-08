class Skill {
  final String name;
  final int value;

  Skill(this.name, this.value);
}

class SkillCategory {
  final String name;
  final List<Skill> list;

  SkillCategory(this.name, this.list);
}