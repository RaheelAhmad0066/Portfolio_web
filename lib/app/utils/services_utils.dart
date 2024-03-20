class ServicesUtils {
  final String name;
  final String icon;
  final String description;

  ServicesUtils({
    required this.name,
    required this.icon,
    required this.description,
  });
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Ui/Ux Design',
    icon: 'assets/icons/service-icon1.png',
    description:
        "I'm creating elegant designs suited to your needs following core design theory. ",
  ),
  ServicesUtils(
    name: 'Web Design',
    icon: 'assets/icons/service-icon2.png',
    description:
        "Are you interested in the great Web Design? Let's make it a reality.",
  ),
  ServicesUtils(
    name: 'Web Development',
    icon: 'assets/icons/service-icon3.png',
    description:
        "Do you have an idea for your next great website? Let's make it a reality.",
  ),
  ServicesUtils(
    name: 'App Development',
    icon: 'assets/icons/service-icon4.png',
    description:
        "Are you interested in the great Mobile app? Let's make it a reality.",
  ),
];
