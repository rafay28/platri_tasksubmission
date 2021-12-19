class Company {
  Company({
    this.id,
    this.name,
    this.description,
    this.imageUrl,
    this.logoUrl,
    this.urlName,
  });

  String id;
  String name;
  String urlName;
  String imageUrl;
  String logoUrl;
  String description;

  Company copyWith(
      {String id,
      String name,
      String urlName,
      String imageUrl,
      String logoUrl,
      String description}) {
    return Company(
        id: id,
        name: name,
        urlName: urlName,
        imageUrl: imageUrl,
        logoUrl: logoUrl,
        description: description);
  }

  Company.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    urlName = json['urlName'];
    imageUrl = json['imageUrl'];
    logoUrl = json['logoUrl'];
    description = json['description'];
  }

  @override
  List<Object> get props => [id, name, urlName, imageUrl, logoUrl, description];
}
