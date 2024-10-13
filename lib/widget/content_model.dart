
class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.title, required this.image});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description:
          'Pick the food from our Menu and lets Deliver it to you Enjoy!',
      title: 'Select from our best menu',
      image: 'images/menu.png'),
  UnboardingContent(
      description:
          'You can Pay cash on delivery \n  once you have received your meal!',
      title: 'Easy Online Payment \n  Card payment is still a choice',
      image: 'images/wallet.png'),
  UnboardingContent(
      description:
          'Delivery at your door step \n  once you have received your meal!',
      title: 'Instant deliveries  \n  even to remote areas!',
      image: 'images/delivery.png'),
];
