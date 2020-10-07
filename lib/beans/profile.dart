enum ProfileType {
  email,
  linkedin,
  github
}

class Profile {
  final ProfileType type;
  final String text;

  Profile(this.type, this.text);
}