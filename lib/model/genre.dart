import 'base_model.dart';

class Genre extends BaseModel {
  int id;
  String name;

  Genre(Map<String, dynamic> data) {
    this.id = data['id'];
    this.name = data['name'];
  }
}
