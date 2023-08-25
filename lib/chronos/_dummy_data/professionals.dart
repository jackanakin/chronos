import 'package:chronos/chronos/models/professional.dart';

final specializations = [
  ProfessionalSpecialization(
      image:
          'https://st4allthings4p4ci.blob.core.windows.net/allthingshair/allthingshair/wp-content/uploads/sites/2/2022/12/14174626/corte-americano-masculino.jpg',
      name: 'Americano'),
  ProfessionalSpecialization(
      image:
          'https://st4allthings4p4ci.blob.core.windows.net/allthingshair/allthingshair/wp-content/uploads/sites/2/2019/05/03112440/Cabelo-masculino-curto-com-corte-fade-532x665.jpg',
      name: 'Fade'),
  ProfessionalSpecialization(
      name: 'Repicado',
      image:
          'https://st4allthings4p4ci.blob.core.windows.net/allthingshair/allthingshair/wp-content/uploads/sites/2/2020/11/21163200/corte-masculino-curto-ondulado-repicado-532x778.jpg'),
  ProfessionalSpecialization(
      name: 'Militar',
      image:
          'https://st4allthings4p4ci.blob.core.windows.net/allthingshair/allthingshair/wp-content/uploads/sites/2/2019/05/03152158/Cortes-de-cabelo-curto-masculino-Corte-militar-532x540.jpg'),
  ProfessionalSpecialization(
      name: 'Undercut',
      image:
          'https://st4allthings4p4ci.blob.core.windows.net/allthingshair/allthingshair/wp-content/uploads/sites/2/2020/11/21161115/corte-masculino-curto-liso-loiro-undercut-532x708.jpg'),
  ProfessionalSpecialization(
      name: 'Social',
      image:
          'https://st4allthings4p4ci.blob.core.windows.net/allthingshair/allthingshair/wp-content/uploads/sites/2/2019/05/03120436/Cortes-de-cabelo-curto-masculino-Drake-532x532.jpg')
];

const description =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consequat elit ac tortor eleifend maximus. Vivamus congue aliquet laoreet. Donec iaculis suscipit dui ac hendrerit. Nunc feugiat, turpis et ultrices viverra, tellus purus porttitor tellus, nec condimentum enim mi a lorem. Aenean ullamcorper turpis purus. turpis et ultrices viverra, tellus purus porttitor tellus, nec condimentum enim mi a lorem. Aenean ullamcorper turpis purus.';

final professionals = [
  Professional(
    nickname: 'Brad',
    fullname: 'Brad Pitt',
    profileImage:
        'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQJBntbqy_AhBhpkcGci8VP79LSwcheGgaj4BEeWLy9pUK3KOy7',
    specializtions: [
      specializations[0],
      specializations[1],
      specializations[2]
    ],
    description: "Brad$description",
  ),
  Professional(
    nickname: 'Lander',
    fullname: 'Antony Starr',
    profileImage:
        'https://www.einerd.com.br/wp-content/uploads/2022/06/Homelander-capitao-patria-the-boys-antony-starr-890x466.jpg',
    specializtions: [
      specializations[3],
      specializations[4],
      specializations[5]
    ],
    description: "Lander$description",
  )
];
