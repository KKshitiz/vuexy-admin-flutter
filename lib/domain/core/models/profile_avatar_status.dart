enum ProfileAvatarStatus {
  online,
  away,
  dnd,
  none;

  String toJson() => name;
  static ProfileAvatarStatus fromJson(String json) => values.byName(json);
}
