class Skill {
  final String name;
  final int value;

  Skill(this.name, this.value);
}

class SkillCaregory {
  final String name;
  final List<Skill> list;

  SkillCaregory(this.name, this.list);
}