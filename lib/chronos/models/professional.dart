import 'package:chronos/_cmn/models/base_model.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Professional extends BaseModel {
  Professional({
    required this.nickname,
    required this.fullname,
    required this.description,
    required this.profileImage,
    required this.specializtions,
  }) : super(id: uuid.v4());

  final String nickname;
  final String fullname;
  final String description;
  final String profileImage;
  final List<ProfessionalSpecialization> specializtions;
}

class ProfessionalSpecialization extends BaseModel {
  ProfessionalSpecialization({
    required this.name,
    required this.image,
  }) : super(id: uuid.v4());

  final String name;
  final String image;
}
