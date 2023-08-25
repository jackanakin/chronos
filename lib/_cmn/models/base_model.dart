class BaseModel {
  BaseModel({required String id}) {
    _id = id;
  }

  late String _id;

  get getId => _id;
}
