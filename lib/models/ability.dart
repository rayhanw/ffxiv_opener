class Ability {
  final String name;
  final String category;
  final String url;
  final bool off;

  const Ability({
    required this.name,
    required this.category,
    required this.url,
    this.off = false,
  });
}
