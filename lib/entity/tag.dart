import 'package:mobile_app/core/ID.dart';

class Tag {
  final ID id;
  final String label;

  Tag(this.id, this.label);

  Tag.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        label = json['label'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'label': label,
      };
}
