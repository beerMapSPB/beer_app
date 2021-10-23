class Place {
  final String name;
  final String description;
  final String adress;
  final String type;
  final double rate;
  final String logo;
  String interior;
  final PlaceExternalLinks externalLinks;

  String operatingModeToHuman() {
    return 'Закрыто до 10:00';
  }

  Place(
      {required this.name,
      required this.description,
      required this.adress,
      required this.type,
      required this.rate,
      required this.logo,
      this.interior = '',
      required this.externalLinks}) {
    if (this.interior.isEmpty) {
      this.interior = this.logo;
    }
  }
}

class PlaceExternalLinks {
  final String? phone;
  final String? vk;
  final String? telegram;
  final String? web;
  final String? instagram;
  PlaceExternalLinks({
    this.phone,
    this.vk,
    this.telegram,
    this.web,
    this.instagram,
  });
}
