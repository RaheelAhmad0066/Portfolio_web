import 'package:protfolio_aedbel/app/changes/img.dart';

class WorksUtils {
  final String titel;
  final String img;
  final String description;

  WorksUtils({
    required this.titel,
    required this.img,
    required this.description,
  });
}

List<WorksUtils> worksUtils = [
  WorksUtils(
    titel: 'Application UI Design',
    img: portfolioImg1,
    description:
        "I'm creating elegant designs suited to your needs following core design theory. ",
  ),
  WorksUtils(
    titel: 'Furni furniture UI Design',
    img: portfolioImg2,
    description:
        "Are you interested in the great Web Design? Let's make it a reality.",
  ),
  WorksUtils(
    titel: 'Mobile UI Design',
    img: portfolioImg3,
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
  ),
  WorksUtils(
    titel: 'Businesscard UI Design',
    img: portfolioImg4,
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
  ),
  WorksUtils(
    titel: 'Dashboard UI Design',
    img: portfolioImg5,
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
  ),
];
